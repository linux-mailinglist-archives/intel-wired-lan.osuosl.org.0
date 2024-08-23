Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B3C95D765
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 22:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26C10612EC;
	Fri, 23 Aug 2024 20:16:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fuihoX5IBGIf; Fri, 23 Aug 2024 20:16:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 619616083F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724444199;
	bh=ZIiC7GWGkVVKmt6xo7NLZiWePktKNw9jhuVlkfxL1GM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RDln0/G+T/eKI1r5WSOd83h3HtDn28nBn4N+zmil3CZr4rRPKLX4HmUCtwjn16+fy
	 Mn7JX+6C1/0PwaNJYfY1UitU4JjS77uqtFp7sYeN7Chj4v+4wdT4BcH0so7venTZuu
	 fmBeAZhqq3etH+5adfdRHK5uycRr34di2m6TVkI5+Y6Acwzclmabp8V/tUdI2muHIZ
	 gr5CWvLAgXK1/TFmcnIrZQeawJwRmUpmCicWOHgl4eflu2KiXVKpjizl4Dfz4hPZpu
	 f/zeaD9YY6LocZBaVQb5Gkgx4wq4+cRD2v4BZcCKgMrklFbh4Etzn/q/uU7YIgrrqX
	 hA7g/HIFLkStQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 619616083F;
	Fri, 23 Aug 2024 20:16:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07F1C1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01456840CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4rdeL1haNfVq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 20:16:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65C5081EA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65C5081EA1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65C5081EA1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 20:16:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EA7F8613E2;
 Fri, 23 Aug 2024 20:16:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 728D8C32786;
 Fri, 23 Aug 2024 20:16:33 +0000 (UTC)
Date: Fri, 23 Aug 2024 21:16:31 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240823201631.GF2164@kernel.org>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
 <20240820102402.576985-10-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820102402.576985-10-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724444194;
 bh=YzrbcT7Hi/51AtA0uUsSvWlafQ+6x8m36YYXxO+a/aU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B8+FgWyjALEhKrrfTBC4gfbfj8BzEnnGuJ87SRUtpnYcWqh1CU+Z8quvheXfGbf0U
 9ymwzbIg5yEq1TSOl1qiCQlRVUx03QorwEqYNLAo20lieQn3rDOSlDPMqpa5Y5WquK
 IEaCtFm4g0CdlsVo7TDyknRt2ZgaYFpxENIHRhe1aZffCUVRXzpghGo5ZrEBJzB8hZ
 zibRA0wf1rSoiTiSBUJlJSjkVamZoAoZ+fdZc+TegNhxOVDokLQ+yxssUEZYcsM8Sc
 m2mY60kE4g1kkrI8DcnRinJEuV7c31vjPAcRQpLlv3s/Sg8ekxAZ0T83aA9AkB0kcc
 9SI26S78Qh7Nw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=B8+FgWyj
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 2/6] ice: Use FIELD_PREP
 for timestamp values
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

On Tue, Aug 20, 2024 at 12:21:49PM +0200, Karol Kolacinski wrote:
> Instead of using shifts and casts, use FIELD_PREP after reading 40b
> timestamp values.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V5 -> V6: Replaced removed macros with the new ones

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>
