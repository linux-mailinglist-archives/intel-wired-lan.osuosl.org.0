Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B127995BE7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 01:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F6FF405ED;
	Tue,  8 Oct 2024 23:51:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4o43_yJDC1C; Tue,  8 Oct 2024 23:51:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64BBA405EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728431504;
	bh=BpzDN2dRqO5uAQwEsbpIR1rgAYCd0qLxuHHTS/ha6uo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=onX408rw0O87NGpNjbn+xdEhjUP252r0rqH33P9Chu6gN15wqSSlXsy8T4f0+hywZ
	 pzzusK9VuMt/49lFrd74VMfpRfYlJT1YbqCtYH+nhTcwPZxkBc0zsafiZD4sML5JYA
	 MF+MOKaXx3XJNOuiBE7zN/ljDxnAnEBO/SE6rDsvxjP+g692q6vmJ7Dz9FAaYzZpY8
	 x1K7d76Wnxxfn/JnZ0t8Il4k643clklL2Ny9JIaJVX1vyMbNzv2DXpQPZlJlAX2VMe
	 MN5macB8UntBPpwae+nPG5k8xsPYA6SWrYIzT+tfDvEqNfKkSrCsmBENGX/mursdkE
	 on6P5BY89gIuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64BBA405EF;
	Tue,  8 Oct 2024 23:51:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 261881BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1477E8117C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eT_tlZjuhxCT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 23:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7462E81170
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7462E81170
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7462E81170
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:51:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B3098A43791;
 Tue,  8 Oct 2024 23:51:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E82BC4CEC7;
 Tue,  8 Oct 2024 23:51:39 +0000 (UTC)
Date: Tue, 8 Oct 2024 16:51:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20241008165138.366827ce@kernel.org>
In-Reply-To: <094ea42117070aaacff25145b23feadef53dbfbc.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
 <094ea42117070aaacff25145b23feadef53dbfbc.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728431500;
 bh=vz8YZ24Hag6SvOb63hVxuoxPQOMzO7N8ox5d8Qw3hOo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OUWgqEFyFPd4zNHJ3Ey4YW/Gcfd+7UUQiXvjtbD1jq4+H7NqK2nK/Cz5qF/2HWZCP
 CR5rwyZdn6e2kIhcmVPLvfL7BD12TINLEv3oPsbTEr4uqIaCUgMwkkXSpD23sRWU7m
 YHwHcEMO1VfQ8iAM966MIoIZDXq7wJfLqZS3OvEGt9XqOfcSnSHSJ5Y368UVepzzgl
 di5yvF/9FtCKFkAMIoUea+5mfWX2XrK6m06t/WTv19LIcIpJFiItyja6yM1JUiz5vI
 7yMfzuL4tsNVIUTs39BUv03iZHSJ9PMspcyLa1lIPOwD1W61KhV3bT69tG+fXwZvYM
 a0V1/I9H0Pb3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OUWgqEFy
Subject: Re: [Intel-wired-lan] [PATCH v8 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
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
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 30 Sep 2024 15:53:54 +0200 Paolo Abeni wrote:
> hook into netif_set_real_num_tx_queues() to cleanup any shaper
> configured on top of the to-be-destroyed TX queues.
> 
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
