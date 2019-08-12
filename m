Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F108A92C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 23:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C92AC843FE;
	Mon, 12 Aug 2019 21:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wO8qg9PRBWDV; Mon, 12 Aug 2019 21:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 779D88440D;
	Mon, 12 Aug 2019 21:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3986C1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 21:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35B2D87475
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 21:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14dxd+24x4W8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2019 21:19:34 +0000 (UTC)
X-Greylist: delayed 00:05:01 by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5132987532
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 21:19:34 +0000 (UTC)
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 4931E13C2B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 14:14:33 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 4931E13C2B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1565644473;
 bh=8M/Nj346+/mAUwiPqOmzNcZzOzmtUu2hiYcXb3jno/U=;
 h=To:From:Subject:Date:From;
 b=kWIGc4zBQa9mJu/MdrOCIBKgHeGha+2ms1hXTflcTJHblGnXMqwsSB+eBUQf44Rls
 2y4EdqzyhM3lUldGYGEVPlH1IXkbJN1RhaCbKoI0lmkvAFF/zK1wLnD9yY8o2T1LtR
 dZ3pzYzmZ1CE+wTUCCsBCKQANVHjdCUxFkciaDsE=
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <9e598973-0bca-eda1-c5df-9f3ef16bf700@candelatech.com>
Date: Mon, 12 Aug 2019 14:14:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs
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

I have a user trying to boot up our 4.20+ kernel with 6 4-port 10G NICs in it.

dmesg is full of cma_alloc errors.  I increased CMA space to 32MB, but still no luck.

Any idea how much CMA memory is needed for this config?

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
