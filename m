Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 604B4647443
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 17:28:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1CD081FAB;
	Thu,  8 Dec 2022 16:28:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1CD081FAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670516913;
	bh=GK6OJ15KzenVctCBvyqQ9hzB0OqB7HNS7vXeixry58Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XcItK8LVRWnTk7SwY1RLP9ZsymyOMNo3I40gI5a0xJYGGhST9iRYoJbhmtZJsD2lQ
	 xrIQfQWwUqcmjnK/SHLyfI/QC/moS551ePhK2niRQS2kvFZrXAbnr8wj8iCoV3AIk5
	 vGUdMXVpJB/9FGXzu9vPNTjc7lLE+gHGfpuGN8h8+9I5i9HBTVYJiTIUvYj0AXelQh
	 HCyjOQIc41XHuntn835vaN2U/2Tuk0ic5cUF4FFUH3dfri06+9605w+xRlv5O6H2IQ
	 kWYJR9ux7B78ufL0u04jEWbO00+XIVw5SncDB3rVel3t0LKVrFf0CODwDmLMHPcvVF
	 6MUSV51wGaP9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpDk7mAC50V9; Thu,  8 Dec 2022 16:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E171181F38;
	Thu,  8 Dec 2022 16:28:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E171181F38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 302F21BF407
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 10:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B78E610CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 10:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B78E610CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SRQUyHfHanHo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 10:06:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EB0360ADC
Received: from cstnet.cn (smtp23.cstnet.cn [159.226.251.23])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EB0360ADC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 10:06:15 +0000 (UTC)
Received: from localhost.localdomain (unknown [124.16.138.125])
 by APP-03 (Coremail) with SMTP id rQCowADnJswMt5Fj7Eh1BQ--.11268S2;
 Thu, 08 Dec 2022 18:06:04 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: leon@kernel.org
Date: Thu,  8 Dec 2022 18:06:03 +0800
Message-Id: <20221208100603.29588-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowADnJswMt5Fj7Eh1BQ--.11268S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUYf7AC8VAFwI0_Gr0_Xr1l1xkIjI8I6I8E
 6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28Cjx
 kF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW8JVW5JwA2z4x0Y4vE2Ix0cI8I
 cVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2js
 IEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE
 5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r4j6F4UMcvjeV
 CFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1l
 FIxGxcIEc7CjxVA2Y2ka0xkIwI1lc2xSY4AK67AK6r4DMxAIw28IcxkI7VAKI48JMxC20s
 026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_
 JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14
 v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xva
 j40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JV
 W8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb8hL5UUUUU==
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Mailman-Approved-At: Thu, 08 Dec 2022 16:28:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Add check for kzalloc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: jiri@resnulli.us, intel-wired-lan@lists.osuosl.org,
 Jiasheng Jiang <jiasheng@iscas.ac.cn>, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 08, 2022 at 05:25:02PM +0800, Leon Romanovsky wrote:
>> +err_out:
>> +	for (j = 0; j < i; j++) {
> 
> You don't need an extra variable, "while(i--)" will do the trick.

No, the right range is [0, i - 1], but the "while(i--)" is [1, i].
If using "while(i--)", the code should be "tty_port_destroy(pf->gnss_tty_port[i - 1]);".
It will be more complex.
Therefore, it is worthwhile to use an extra varaible.

Thanks,
Jiang

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
