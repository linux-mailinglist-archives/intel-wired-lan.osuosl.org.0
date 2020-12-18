Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E11752DE8D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 19:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEE8087BA6;
	Fri, 18 Dec 2020 18:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qU59Lb+eQjkD; Fri, 18 Dec 2020 18:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 674BF87B98;
	Fri, 18 Dec 2020 18:13:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBC0B1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 18:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD3672E31A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 18:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ocdWawTih0m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 18:13:20 +0000 (UTC)
X-Greylist: delayed 00:05:01 by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by silver.osuosl.org (Postfix) with ESMTP id 44F042E313
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 18:13:20 +0000 (UTC)
Received: from [192.168.254.6] (unknown [50.46.158.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id E9EDF13C2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:08:18 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com E9EDF13C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1608314899;
 bh=ccO3c/61iKb92Jpzw+C6Xue8nXMY6UQj8oxF/jQm4kE=;
 h=To:From:Subject:Date:From;
 b=Wk/Z2fQDbbga4jBb9NdTAS14aZ+HWoW8zI7t54NpTpHBP4fBOuzGb4h1ligUAOw41
 O0Jvjrv3uu2ky/1zpPVtshEhGeB8KAmILFxMoFBGck7xIXdYMWpdN+IQYrLHSWiZNs
 uIVVBSRhaeWd6nmWzLPppVpygiSIh4kRE/APUFk4=
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
Date: Fri, 18 Dec 2020 10:08:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-MW
Subject: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

One of our users reports that our 5.10 kernel negotiates the 1/2.5/5/10g NIC to 1Gbps
instead of 2.5Gbps.  Booting the 5.4 kernel shows 2.5Gbps as expected.

I have not yet tried to bisect this...is it a known issue?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
