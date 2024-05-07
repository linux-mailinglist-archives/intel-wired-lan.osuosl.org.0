Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 836558BDB7D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 08:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E0AE407B1;
	Tue,  7 May 2024 06:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MiqHLMHR6w9z; Tue,  7 May 2024 06:31:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A6A9407CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715063504;
	bh=ayw4KnU1RnMVA8OqMIL8IKsVc4a0EF01H4cTWTYWOPg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=FgGdnFU3sB81RWbhHubRU2tKjseGSjPDXX1ogtgOJuoFC2/tUUS7C0+NsHqIH9+KR
	 WsSmkRcVz6hTnOIRHkWx23sTx1oaYUZChj44QXN0pcfGtIjUc8GSVvKoP0pE72+H+7
	 e9Qw1SIgKAT25GoX6v1ovUlBmguqk9RDFXU3dnqhRkJI09xkwBXudNIoG9YRLOJxVl
	 6gz5gY8qG0En8h8/+SAWeBQdnT+m0dEBLRoNJeMUdoJRGjWH28oEHfLHkKaouC5JbU
	 +1Nmx3nqdroo6qQYiyQgxuwkz8297B+SRi5mrN0KyAKZvtyiJW1GwswljOck5iJkAt
	 7GGFeS0WRX9Jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A6A9407CB;
	Tue,  7 May 2024 06:31:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 555D61BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CE4F41479
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:31:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aCyoUHpTZ6Py for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 06:31:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4167040158
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4167040158
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4167040158
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:31:39 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1s4EMR-00019z-6F; Tue, 07 May 2024 08:31:35 +0200
Message-ID: <bc14863a-41f0-47d2-ab95-ed82eff5f5d7@leemhuis.info>
Date: Tue, 7 May 2024 08:31:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, kernel.org-fo5k2w@ycharbi.fr,
 Jeff Daly <jeffd@silicom-usa.com>
References: <cbe874db-9ac9-42b8-afa0-88ea910e1e99@intel.com>
 <e16d08bf-49f6-4c51-85fa-7c368d1887b4@ycharbi.fr>
 <4a0bf7cf-d108-49ac-ac7c-6136a070c44b@intel.com>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
Content-Language: en-US, de-DE
In-Reply-To: <4a0bf7cf-d108-49ac-ac7c-6136a070c44b@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1715063500;
 3d487244; 
X-HE-SMSGID: 1s4EMR-00019z-6F
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 In-Reply-To:References; bh=ayw4KnU1RnMVA8OqMIL8IKsVc4a0EF01H4cTWTYWOPg=;
 t=1715063500; x=1715495500; b=spq6YbMkwuMbcH/4fUut9rGuMmIaSqqtF2BkDbvXpAWLnZY
 TOT4lmi0ktWEO3o0CjPiW1FLri4AllzC8ER8mjwfQSLZRIf77yoSAD0Uu6+bVTx5Q4yXzpn0QPONZ
 w0+uuKGzaAtsUCUKdYLq0w1MU0gxF188VnZA6sieGnv7FQSOVCy4qQztsv+Er5TExISGc9wHmBv8v
 iFrqc/i7R+xd/DXf3SH5HPQC5s8EQKnm/wmqfUhAc5SrV7VV1KE0+iVJTbeOOgGRKW/DxLzP9Lsxr
 BnTQeW5ZaBUE86n+WVOtI1SYO2ocWRiaRNprNB8PGnzq7VYb9ztokvge9mmyNKjg==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=spq6YbMk
Subject: Re: [Intel-wired-lan] Non-functional ixgbe driver between Intel
 X553 chipset and Cisco switch via kernel >=6.1 under Debian
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06.05.24 23:18, Jacob Keller wrote:
> On 5/4/2024 6:29 AM, kernel.org-fo5k2w@ycharbi.fr wrote:
>>  > Ideally, if you could use git bisect on the setup that could
>>  > efficiently locate what regressed the behavior.
>> I really want to, but I have no idea how to go about it. Can you write 
>> me the command lines to satisfy your request?
> The steps would require that you build the kernel manually. I can
> outline the steps i would take here

TWIMC, there is a document on bisection in the kernel now, see
Documentation/admin-guide/verify-bugs-and-bisect-regressions.rst or
https://docs.kernel.org/admin-guide/verify-bugs-and-bisect-regressions.html

Ciao, Thorsten
