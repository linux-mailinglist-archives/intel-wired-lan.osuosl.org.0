Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 380C78D46DC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 10:17:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C60B561049;
	Thu, 30 May 2024 08:17:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id szYtqr18fIb0; Thu, 30 May 2024 08:17:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6F816104A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717057051;
	bh=2qSmcKQLSP52mEVww3DCCIcBrf2lLBSwwql8yWCKhrw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vqqkfffmQUf1ZZ/4EfxKZ8ptaiOLbTqV2s951gwj9TjAgzzZ2MiF9YdTNSpShmg5G
	 AP35y3a7YvaAJPEjW+32EHKzfVHMGK7oyznlAWrUQHFo6Rrx5ZDsVBPC/h2Sa4KGdV
	 pNG3EKtyMoVXvUVyoVBEe7TE0bIjO1ayI+EAplAHPGN/D7M1mnLZfhiSU1MSwdZEbX
	 ND+ORhM5apZRyPOBuYtP2HjgDuHqSMRVsbFi1UJLebQ3tr42Y2m3FconwI4XISsp34
	 8ZUR/65CFR98moKMyQd08Ztzir0vxWrRd3ETOnH++S2Z7c+8EBqqvOc5BCGNzEiV3E
	 +qvMxlGnPqroQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6F816104A;
	Thu, 30 May 2024 08:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 809A31D4409
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A3B540517
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:17:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bh0j0JtvwsgN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 08:17:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1BCA040348
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BCA040348
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1BCA040348
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 08:17:28 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1sCayR-0008RD-QD; Thu, 30 May 2024 10:17:23 +0200
Message-ID: <6f9bcb19-b6ff-4a62-8cbc-8aa40d00ff07@leemhuis.info>
Date: Thu, 30 May 2024 10:17:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jani Nikula <jani.nikula@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Corinna Vinschen <vinschen@redhat.com>, Hariprasad Kelam
 <hkelam@marvell.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Naama Meir <naamax.meir@linux.intel.com>
References: <87o78rmkhu.fsf@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: en-US, de-DE
In-Reply-To: <87o78rmkhu.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1717057049;
 1d555aaa; 
X-HE-SMSGID: 1sCayR-0008RD-QD
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
 References; bh=2qSmcKQLSP52mEVww3DCCIcBrf2lLBSwwql8yWCKhrw=; t=1717057049;
 x=1717489049; b=0vWy8hdFXMRGHGdIAftLuz84Aj2gwo9DocbNNQVELfh119dhKZEWId0Uyig3a
 hvd4McIGJlmgYD935tWp9YNaoF2NzMjwKXjYtTVtbeyEUW/uBEVurS+3MGJ35r1bgthEK7R+bjH6k
 tBAQiFmW7T3TBAboLKG/5YjRvKZaUDvcK6RriR6RSacXx3cksM5aY+VN7k1s3sJbLpKoKHP3JHf7v
 67uGM+ivYdDuR+kkP9sTuaU/DJr9j80aN60DMaqamGMmpS/wizIt1U3DsUBvvhgNtifgazdwpnKYL
 n/cr4XmeKQVIAJKRjHNjLSj3fYV/OY5bF61h/SWAEHy1kgj5xA==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=0vWy8hdF
Subject: Re: [Intel-wired-lan] REGRESSION: 86167183a17e ("igc: fix a log
 entry using uninitialized netdev")
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 27.05.24 15:50, Jani Nikula wrote:
> 
> Hi all, the Intel graphics CI hits a lockdep issue with commit
> 86167183a17e ("igc: fix a log entry using uninitialized netdev") in
> v6.10-rc1.

FWIW, there is a earlier regression report bisected to that commit id:
https://lore.kernel.org/lkml/CABXGCsOkiGxAfA9tPKjYX7wqjBZQxqK2PzTcW-RgLfgo8G74EQ@mail.gmail.com/

And a revert is up for review:
https://lore.kernel.org/all/20240529051307.3094901-1-sasha.neftin@intel.com/

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.
