Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1864996CC15
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 03:11:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F7FC40BAC;
	Thu,  5 Sep 2024 01:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nq40D77Q2Kf7; Thu,  5 Sep 2024 01:11:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AE2040B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725498694;
	bh=ZROzhV17BwI4keo2UulYdFmrPKhDlwNQKphqJLeNbJY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ozEbuklU8nKg4Ua+S+fSxoQhhDcwMTdNIMb68OGWMEC5KYCFx+Bwziuo5qW423o0P
	 BH0MpyhqleO6SxlmEuQaywcSrkKFxFrmimKxpC/QPU3PLpPuL6nuQ/SpjKqYoPdW7/
	 URy348JO2Laf61dCX5Puao2Dln9CojWv7mNXj7eRjZmaFvGmQNqq9Tm/6/j1KhAWDv
	 qts11f/9FK4cqzQ3Oa9pBB82STZHh9PhdKSSHjul+FQeiWloKvBZCXmBJCq+s0X1Sf
	 Ez3iMF8i/5b8uMbSr6T8tj4KbjtotMoP/7UEmcg4wrlrsBJHIWNWZHou1VMhhzln99
	 Hzi/1hqkHbBVA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AE2040B9B;
	Thu,  5 Sep 2024 01:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6A01BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BF87608CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:11:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1l7eKwSwneXT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 01:11:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CEBA7605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEBA7605D8
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEBA7605D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:11:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 89CE9A43731;
 Thu,  5 Sep 2024 01:11:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9BDFC4CEC2;
 Thu,  5 Sep 2024 01:11:29 +0000 (UTC)
Date: Wed, 4 Sep 2024 18:11:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240904181129.05a55528@kernel.org>
In-Reply-To: <faecb06c4f40a2ce822cb14817879aa98dfd715d.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <faecb06c4f40a2ce822cb14817879aa98dfd715d.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725498690;
 bh=X3xofw5D6OUKfcb85NM7gRl7w7eY+mtsaWBkTppeYWE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GvkP3rNmfXXqLl5rJzteESsBJUpAN6GAxnP8FhYm15t0zP1qgeBIJnvLtiZYFkEYG
 1CYwKwTZh5cfAS+U7UeGizvM6JETrM45HGH3z/Mk7Xrss9PgRiRoOT7xb1olyWuN5o
 5DZcCTYH9dAjupmsHuFYVfQITSYwIiAT7+N4mim4xeVNhwHVJS7sFvHD9K4bcbrvB6
 hx+qS3ZxBy48QWIMoNejFvvIMsJiryRysWckRsi46njqPnPqi6HS4zn3EUL0IkutYX
 3F2AGyJ0MMIITyZOdoEy/TQqpFqEW08d4F+rGA80Qj55FixIteXYqVjV731YHjuna9
 BjB+N5ySVtD7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GvkP3rNm
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 03/15] net-shapers:
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

On Wed,  4 Sep 2024 15:53:35 +0200 Paolo Abeni wrote:
> +static int net_shaper_ctx_setup(const struct genl_info *info, int type,
> +				struct net_shaper_nl_ctx *ctx)
> +{
> +	struct net *ns = genl_info_net(info);
> +	struct net_device *dev;
> +	int ifindex;
> +
> +	memset(ctx, 0, sizeof(*ctx));

Don't think you need to memset() this?
Patch 1 touches the relevant memset()s in the core.

> +static int net_shaper_generic_pre(struct genl_info *info, int type)
> +{
> +	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)info->ctx;
> +	int ret;
> +
> +	BUILD_BUG_ON(sizeof(*ctx) > sizeof(info->ctx));
> +
> +	ret = net_shaper_ctx_setup(info, type, ctx);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

There seems to be no extra code here at the end of the series so:

	return net_shaper_ctx_setup(info, type, ctx);

With those nits addressed:

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
