Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD156A06A74
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 02:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D57C60895;
	Thu,  9 Jan 2025 01:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xL7kyOJYiS04; Thu,  9 Jan 2025 01:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 928346089A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736387697;
	bh=vpAdwO+freg6qOXNGmvIkKqh9w9+M7dJ8sYayrAWI38=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bjSO23u97PH6gjurXpNeSt/FgipxkI5Zug17tii84fLrOLF+zLm3PQZrqUdSVZJMl
	 KzEenCFJWO6gzcUZAd8ppNMqyoCDbWjcIfW5cgVfQvhk2bK1Gx8UAx3i0DfMBMZP1c
	 PoPWwszEXdLkaKaoXAcJUYERcvHgrtPbuUcQc2d7PUYfncFrsEz6j4yqCh5S2sMS1a
	 vVBz2R9kjhug0FEs4P8JrepOV2pxWByD0tRfnqYNzaRCxQv03/o2wtA9WPVM181AoH
	 d9f44W3k9Q0aCUXcSoiaKY/S5Bk/rH3nwuVAtG+JHF2g6ndO3OVX5M8vZyKUPVid86
	 AXVC9a9WYpFwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 928346089A;
	Thu,  9 Jan 2025 01:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EB6F17AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 01:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D23D240949
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 01:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCkl1EXVeYPv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 01:54:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=114.242.206.163;
 helo=mail.loongson.cn; envelope-from=zhanghongchen@loongson.cn;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BD3A84025B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD3A84025B
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD3A84025B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 01:54:52 +0000 (UTC)
Received: from loongson.cn (unknown [111.207.111.194])
 by gateway (Coremail) with SMTP id _____8AxfaxkLH9n6FJgAA--.3828S3;
 Thu, 09 Jan 2025 09:54:44 +0800 (CST)
Received: from [10.180.13.176] (unknown [111.207.111.194])
 by front1 (Coremail) with SMTP id qMiowMBx38dkLH9nkHkaAA--.44590S3;
 Thu, 09 Jan 2025 09:54:44 +0800 (CST)
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <e6f59bda-9de8-3d30-3f37-3ab1ec047715@loongson.cn>
 <54c34e2c-82f9-4513-8429-9ea19215551a@intel.com>
From: Hongchen Zhang <zhanghongchen@loongson.cn>
Message-ID: <f3f4f561-8402-d030-2ee9-38a80662168d@loongson.cn>
Date: Thu, 9 Jan 2025 09:54:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux loongarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <54c34e2c-82f9-4513-8429-9ea19215551a@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: qMiowMBx38dkLH9nkHkaAA--.44590S3
X-CM-SenderInfo: x2kd0w5krqwupkhqwqxorr0wxvrqhubq/1tbiAQERB2d+-8QDJgAAsR
X-Coremail-Antispam: 1Uk129KBj93XoW7ZFyDGw4fZrW7ZFy3ZF4rXrc_yoW8ArWUpF
 1rtF4a9rs8tw18Ar4S934jgr4FkasrGasIy398tw15JF47Ar13Ar4xGa1UGFn5Xa1fuF4I
 kw4Sqr9xWayDAagCm3ZEXasCq-sJn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUvYb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v2
 6F4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYIkI8VC2zVCFFI0UMc
 02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAF
 wI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JMxk0xIA0c2IEe2xFo4
 CEbIxvr21l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG
 67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MI
 IYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E
 14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJV
 W8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x07URa0PU
 UUUU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=loongson.cn
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Daniel Machon <daniel.machon@microchip.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Przemek,
On 2025/1/8 下午4:59, Przemek Kitszel wrote:
> On 1/8/25 04:09, Hongchen Zhang wrote:

>> Hi Michal,
>> On 2024/1/31 pm 7:58, Michal Schmidt wrote:
>>> new_rcp->recipe_bitmap was written to as if it were an aligned bitmap.
>>> It is an 8-byte array, but aligned only to 4.
>>> Use put_unaligned to set its value.
>>>
>>> Additionally, values in ice commands are typically in little-endian.
>>> I assume the recipe bitmap should be too, so use the *_le64 conversion.
>>> I don't have a big-endian system with ice to test this.
>>>
>>> I tested that the driver does not crash when probing on aarch64 anymore,
>>> which is good enough for me. I don't know if the LAG feature actually
>>> works.
>>>
>>> This is what the crash looked like without the fix:
> 
>>> [   17.599142] Call trace:
>>> [   17.599143]  ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
>>> [   17.599172]  ice_init_lag+0xcc/0x22c [ice]
>>> [   17.599201]  ice_init_features+0x160/0x2b4 [ice]
>>> [   17.599230]  ice_probe+0x2d0/0x30c [ice]
>>> [   17.599258]  local_pci_probe+0x58/0xb0
>>> [   17.599262]  work_for_cpu_fn+0x20/0x30
> 
>> I encountered the same problem on a LoongArch LS3C6000 machine. Can 
>> this patch be merged now?
> 
> What kernel base do you use?, we have merged the Steven Patches long ago
My test is based on 6.6.61 which contains Steven's patch:
  8ec08ba97fab 2024-05-07  ice: Refactor FW data type and fix bitmap 
casting issue [Steven Zou]

It seems that Steven's patch can not solve the unaligned access problem 
caused by new_rcp->recipe_bitmap, So is Michal's patch (may need some 
change in ice_add_sw_recipe()) still needed?

-- 
Best Regards
Hongchen Zhang

