Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 255529690B3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 02:37:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0709760740;
	Tue,  3 Sep 2024 00:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B11pZCzWSVg4; Tue,  3 Sep 2024 00:37:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10DEB60743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725323832;
	bh=cgrDCeFt8fQNv95/xvyxrOB7/VDxLnyUD+27p0Fuwx0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ASqHqsVuebeG58b902ICOynlO9gDOKcwNtc5r7HlMTd0Fn6RJLWpxEGawkRMPGLpt
	 kQYh95DYbmNinu8cInHPhYRiXD2G5HHxQ+SAMbg5zpDbahqwxSYSj2Pd7C9FMr0hfj
	 G/Z0BywSyGmOsOJsGSrR0v1kgjaEG9TLNR14WiKagG5pcUaElJYmij9S/prIfclpoB
	 vktK9m8lLZi4BHAdwesBsZ1Rnqqsfkq/vPfLGO08YuF14dwfaK2Rs/BD25sEyIezC2
	 5Jed8HnA7TC3f7THJQWL2ieh+dNcSryzqcQcWUsPDzE44G2LR3LQizyGGoNryVkh1r
	 w7NSYYxFUq3ow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10DEB60743;
	Tue,  3 Sep 2024 00:37:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A4301BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 00:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7509080E7B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 00:37:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SXQCkH66vqBU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 00:37:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 946D380E08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 946D380E08
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 946D380E08
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 00:37:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C5E0CA4071B;
 Tue,  3 Sep 2024 00:36:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 136E0C4CEC2;
 Tue,  3 Sep 2024 00:37:06 +0000 (UTC)
Date: Mon, 2 Sep 2024 17:37:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240902173704.71c6b35a@kernel.org>
In-Reply-To: <c6d8052c-c5a0-48e2-8984-0063afc1e482@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
 <58730142-2064-46cb-bc84-0060ea73c4a0@redhat.com>
 <20240830121418.39f3e6f8@kernel.org>
 <c6d8052c-c5a0-48e2-8984-0063afc1e482@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725323826;
 bh=W/A4XMjAkThRmR1Qu06rR2z3sjh6iTSU03vzeapf8YA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JOTcKsq2O8g9HZTRct+iDno3H1bYpqmaTGAOdC5DR6/J0DPF2efa/UVbolo4tyIJP
 dBBz3MqPKE6GQDgaN2imfhusIsRYdzD/G3Cda82U53D6R6dB4FVc1loCX/OEwf6Pim
 6u28OSrfugAatiWg3p/q5u9WRIUJPBv46s9tWx0sFdoMCiRHj+GijXW4fhUHXVnCfr
 LQbFX8O6EYVl7qEe1hfoCEFlahzrhLyjJJiqcijQhgTj8VwqzNUje4L8TRJwQ/U5TJ
 JY4ceOcJL2QyFuy9liFegV/R3ebSBuyp7ETO/ugoYlYIgOP/WoiFlvgFEMFv+p2YPG
 JEYeertEZ/ykA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JOTcKsq2
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2 Sep 2024 12:10:50 +0200 Paolo Abeni wrote:
> >> Was that way a couple of iterations ago. Jiri explicitly asked for the
> >> separation, I asked for confirmation and nobody objected.  
> > 
> > Could you link to that? I must have not read it.  
> 
> https://lore.kernel.org/netdev/ZqzIoZaGVb3jIW43@nanopsycho.orion/
> 
> search for "I wonder if the handle should be part of this structure"
> 
> I must admit by wannabe reply on such point never left my outbox.

"I wonder if .." does not sound like a strong preference.
And the parent ID remained in the struct, so it still partially records 
its position in the hierarchy. Since there is no "move" op it's really
not worth multiplying arguments to most functions 2x.
