Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A70A48B46BC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 16:56:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57B1B60772;
	Sat, 27 Apr 2024 14:56:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uk_tKE8rBGBg; Sat, 27 Apr 2024 14:56:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5717606E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714229803;
	bh=uIcMQKX5z7YHmIxkX2/VQQCTdU78Yxr1lx8Kw+Gj2wA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VE2Z7n0e6RU5yc+JZX8XLs13Y6tkq3mOry+0/hGRJpWBCgWMIOM2j8TUqF2iiM3C/
	 Zljkb3+OyGd68ykqfW2nOsCh6dCI14YfZsm/QpQp93TeQTLsiV3xnITdIYN96kbOMa
	 ZvyoH1GeOjnANWSwDLAPCzLeBWaokKtFmhrZFvn8LB8TPWV8BVG60LDkcVjYm0K40u
	 m2ku70eY8FjQxWA/iqEg7aTKZUrhNF5NZ+J9IfWddNcYPC/kl6IPH5q8QvysKzqA9f
	 qZ1cqMaxKUpEtxTpMRRgebNRkUzlPc8s3kKhBXo8UVf+/NnPYDA/jpL6fslmjt8MDo
	 HG/Sxb/C71jww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5717606E9;
	Sat, 27 Apr 2024 14:56:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C817C1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B334482E22
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EaxPnQHacWNK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 14:56:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68BB282D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68BB282D62
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68BB282D62
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4AC1060472;
 Sat, 27 Apr 2024 14:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FA7CC113CE;
 Sat, 27 Apr 2024 14:56:35 +0000 (UTC)
Date: Sat, 27 Apr 2024 15:56:33 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240427145633.GP516117@kernel.org>
References: <20240427072615.226151-1-ivecera@redhat.com>
 <20240427072615.226151-4-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427072615.226151-4-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714229798;
 bh=XaHCWpGnqlOtaZfd0mWDaLKojE0ezGxRoa1K+QsaIOY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q+gkPOmovTz5xDJ++JX9m799anC7gLp/RKhc7sv0Ky7MYC5MevSgamU42eK8wnMWM
 ozjY7aGJ7JLhfwwzHhZGbji2IvbabrnlgUW5uhKTcO7xwPdPNA5IkksD6mx/COsYj9
 nyb+VDZprcNz16TSc5cFsTz3Nbe4P5c3YCZjec39l/vBHZdPYQcVjZlhsWPlahDHqo
 KoBqSyQjKWZUUo5ehSSab1CPMY43Gi2MOgpcpnfZTYM/bV+zBM3ol9g4sv0GHTKIGd
 PMFS9xogfdToC1GjenAyaji31yCf04Tt6u7JMy/7OLXhh88JT0SCQAlwJ+nXctUSa0
 rfeKnvx2B1+XQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Q+gkPOmo
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/7] i40e: Refactor
 argument of i40e_detect_recover_hung()
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 27, 2024 at 09:26:04AM +0200, Ivan Vecera wrote:
> Commit 07d44190a389 ("i40e/i40evf: Detect and recover hung queue
> scenario") changes i40e_detect_recover_hung() argument type from
> i40e_pf* to i40e_vsi* to be shareable by both i40e and i40evf.
> Because the i40evf does not exist anymore and the function is
> exclusively used by i40e we can revert this change.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

