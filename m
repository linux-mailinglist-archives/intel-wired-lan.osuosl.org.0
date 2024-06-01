Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E5D8D6E62
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 08:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87B2040339;
	Sat,  1 Jun 2024 06:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZD_WZ9X8ibnX; Sat,  1 Jun 2024 06:17:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7215F40370
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717222637;
	bh=Gz7bmF9TUjc/OX2Bwz5if/Zl49asSXtO5AF+/IhGghI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=kEuNguSt+Ik3pEvMhEaVy/GSNanq9l0iR7Q431yjwVeqXEwmoO6vp7PtuAghWIFYr
	 rVrg/zvlu7bQGqMXS1s2ysNnOWqTJeLW2trsoo31aKxDXV0YV1+mfH91SsVOcxdSgP
	 DVHPl9hUZyVWqPJfwCS68Ulr1kHdQeEkuhTma3KLI8XHgb5bvcSc3aBqp3pzPNNFR4
	 hicPWPrwS/O517fusJPbZxQKy5+xy4LglfekXsY0v7f+atb5HaXZ/SwtkZ/ul+DZX3
	 NMdSFgPdleoA1kZGMojIJD3IeSv6esEZkqYAx8zs1ox7o1I8BNOEKpxFtjVxIkAZfE
	 2XqhaNec2120g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7215F40370;
	Sat,  1 Jun 2024 06:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 808881BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 06:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A9A6414F9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 06:17:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c8A-VuCTTIyv for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jun 2024 06:17:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B43840734
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B43840734
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B43840734
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 06:17:13 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1sDI30-0004Ep-UR; Sat, 01 Jun 2024 08:16:59 +0200
Message-ID: <3abae158-adb3-4f76-abf7-6415740bdfd5@leemhuis.info>
Date: Sat, 1 Jun 2024 08:16:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240601050601.1782063-1-mika.westerberg@linux.intel.com>
 <20240601050601.1782063-2-mika.westerberg@linux.intel.com>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
Content-Language: en-US, de-DE
In-Reply-To: <20240601050601.1782063-2-mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1717222633;
 711b0827; 
X-HE-SMSGID: 1sDI30-0004Ep-UR
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 In-Reply-To:References; bh=Gz7bmF9TUjc/OX2Bwz5if/Zl49asSXtO5AF+/IhGghI=;
 t=1717222633; x=1717654633; b=bV5vfO7sxu4CK+c2E1vKHFEbglE3nejA2LtLfnALd7I99l2
 /Y/LcKrWlfp5+7wYMP632GVCB9Ui/DosRhAyZTt0MXnW7FC+mK1hW78maRbZfUjkE+hvL37GDC9lb
 uM+ovc75j5VdEUQfFRTrCB8aeydjqgHcFq+31UDKAPVV/a0fGH58UhH0Yx2SULGWN8tvf0K6ak0QA
 R74xPIBu5DvgvwQoCQp54RTmeILE/7yCX76jg5o5+pZ6fPjJOrXkXiqRlQJaaN3SXMr0YXiPQMIlg
 QtHcCvOnKHmh5d0Y+winF7FpJOS1uaELRor9Qi7L3qS1SxDc0pTsct6alkA31gUw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=bV5vfO7s
Subject: Re: [Intel-wired-lan] [PATCH 1/2] Revert "igc: fix a log entry
 using uninitialized netdev"
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Sasha Neftin <sasha.neftin@intel.com>,
 Corinna Vinschen <vinschen@redhat.com>,
 Naama Meir <naamax.meir@linux.intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Hariprasad Kelam <hkelam@marvell.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux kernel regressions list <regressions@lists.linux.dev>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 01.06.24 07:06, Mika Westerberg wrote:
> This reverts commit 86167183a17e03ec77198897975e9fdfbd53cb0b.

TWIMC, Sasha Neftin already submitted a revert for that commit on Wednesday:
https://lore.kernel.org/all/20240529051307.3094901-1-sasha.neftin@intel.com/

Regression reports for this problem I'm tracking:
https://lore.kernel.org/lkml/CABXGCsOkiGxAfA9tPKjYX7wqjBZQxqK2PzTcW-RgLfgo8G74EQ@mail.gmail.com/
https://lore.kernel.org/intel-gfx/87o78rmkhu.fsf@intel.com/

Ciao, Thorsten
