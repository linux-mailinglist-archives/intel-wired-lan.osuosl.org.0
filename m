Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B39E997E90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 09:44:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E45C60A8F;
	Thu, 10 Oct 2024 07:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJzQ1YOVvSik; Thu, 10 Oct 2024 07:44:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A781260731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728546249;
	bh=ul1PYfQJRUzf+lJeNoTD19q1gB02XsEeh1M1MsnhTP8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GRc8ewLw10qyoP1Ofimy8DPJ10Mj8YO36LFGo9nKFwo9qFdYL60EU/pxqCvP3jKzh
	 H2tF8Ce8ycc5bt36OHg0FwisrH/RCclsqc5Dvnr6aR0JbIFdH24sKJb9XroAtqH4Bw
	 8avQdF7q8kJSmMO0ch1O92mG3QU2s5K5PPEZZCBstV6uFWq+z7aX3J6d/L17pceCZn
	 gPcYMMpehwY5UF5LJmFxntzKwVltJP8j+pR/CG0lEwDBel2ubU+4oDSydVWJa5ukgk
	 eJJ84KIoauz9qpHp/402WFjMOJr1qfft992C//oYy8UY8m1vlgtrYAJ9F6jSBDCkYF
	 KrmOXpanXSo4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A781260731;
	Thu, 10 Oct 2024 07:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A4D11BF473
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 07:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E89C84012F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 07:44:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HAra3VKhe4Bh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 07:44:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 53A2440E90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53A2440E90
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53A2440E90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 07:44:04 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5ae839.dynamic.kabel-deutschland.de
 [95.90.232.57])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DB89E61E5FE05;
 Thu, 10 Oct 2024 09:43:48 +0200 (CEST)
Message-ID: <635d2ba6-985b-4fd6-a7b3-c5aeb1804aa6@molgen.mpg.de>
Date: Thu, 10 Oct 2024 09:43:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20241009140223.1918687-1-karol.kolacinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241009140223.1918687-1-karol.kolacinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 0/4] Fix E825
 initialization
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Karol,


Am 09.10.24 um 15:59 schrieb Karol Kolacinski:
> E825 products have incorrect initialization procedure, which may lead to
> initialization failures and register values.
> 
> Fix E825 products initialization by adding correct sync delay, checking the
> PHY
> revision only for current PHY and adding proper destination device when
> reading
> port/quad.
> 
> In addition, E825 uses PF ID for indexing per PF registers and as a primary
> PHY
> lane number, which is incorrect.

Just a note, that the lines were additionally wrapped by some part in 
the processing queue.


Kind regards,

Paul
