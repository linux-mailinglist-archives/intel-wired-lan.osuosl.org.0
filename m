Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DC97F7235
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 11:59:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AE5D61502;
	Fri, 24 Nov 2023 10:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AE5D61502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823575;
	bh=58GdY+2Q1Zsb5CpUCbCX5wgtPv9Cggy4R8WKzIhSiXo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aOUrGivPJFHz1sLkFEfGQzb2Owqll5gBVhgQLLIIvbf20lkQllUC03Q/kLdGuL0CH
	 ubEhMD1+qa0Waz7yjq4ro699b0RruhqzykspcXMHUEO7bnf2EfMyCeVd6gyVXJnjvv
	 kzoKkBZFOrHuOc006pdrrik3bp9sHfIPv26TyCowE2fn0599KYilGa+LRtcMvTG/D2
	 D+VryVOic75oVc1PxGbuL1n+n1qdPdcC5ilBCiKAjPTy6qnXWjTv5cIAK5kl+UAcB5
	 f8ljrejRkaXE1wwNMMafTQD7ZcTYq7xx/YyPQfxyQ026kam0mj7Vm0oXUYE5/cmAmU
	 NSXepCmaNJsuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eov29dDdMial; Fri, 24 Nov 2023 10:59:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A9B9614FD;
	Fri, 24 Nov 2023 10:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A9B9614FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A71331BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 10:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72CBD61501
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 10:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72CBD61501
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x9KYvhyBq0uQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 10:59:27 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B946F614FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 10:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B946F614FD
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id AF513B83011;
 Fri, 24 Nov 2023 10:59:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 624EFC433C7;
 Fri, 24 Nov 2023 10:59:24 +0000 (UTC)
Date: Fri, 24 Nov 2023 10:59:21 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124105921.GA50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-2-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-2-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823565;
 bh=EOZkNxRfA9Kl8PAL0nuQ12sqXCLbdky3xV1Jm+uFK78=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VPyI3ulwG1+FFG9WtTaXBUAxJKkTxQRoAHT2ldefgsIU7gLM+/LnTDNtqARlyzNzb
 fLGIUIlqbyJ46myP54n5L4Utk+JPsUNfuNVDasWQgbmhWCkkoNkClSyrv1D1IGCziw
 2ayPNlScgRkSURN3sJpmeDsQyNLbqq/vmOEmZHwgSmFixVmFa5oGelfnu6zMecQNpB
 YaWjmk5tYESzPLvmVZOVDJeXQncVfNiGubRWKG9/askodtUP11o4C8ypaq+67dq6/a
 3cRLOvwpCKyVONk4hzhLbXVf1GdW7ScgC2HVVW/xQRlVAHU3eOeGN6Fpq+HF2UeYPa
 v8Xff9djaxz4w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VPyI3ulw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/13] e1000e: make lost
 bits explicit
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:09PM -0800, Jesse Brandeburg wrote:
> For more than 15 years this code has passed in a request for a page and
> masked off that page when read/writing. This code has been here forever,
> but FIELD_PREP finds the bug when converted to use it. Change the code
> to do exactly the same thing but allow the conversion to FIELD_PREP in a
> later patch. To make it clear what we lost when making this change I
> left a comment, but there is no point to change the code to generate a
> correct sequence at this point.

:)

> This is not a Fixes tagged patch on purpose because it doesn't change
> the binary output.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
