Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC0B890723
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:24:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FC2682349;
	Thu, 28 Mar 2024 17:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUNKA0CbaKiQ; Thu, 28 Mar 2024 17:24:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB73882116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646690;
	bh=rqJ4Pha8TcwsGQ4KI9aFsp/XRK1z8hkIMrZIfmp7AuI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AhSZYJpUrE+Ig8Zj6jTZh+5oC840YK6pZqaAAk7L/zBTTobolW0DHWq90Y+SELRjT
	 aPF8XZiLgXBf4Peo2R7TG2ru50zCQiqtZAlBKB8I/IfVe76fjwVr1yuGempOcTLKbK
	 iKP3wkoTJZkBCypSHVJhirNafX8QcBSim3SX6tMakdxG00cgmd3M0gvy7BEwrOSAxq
	 gvKuyoSOx8aT63oKoUPK0qmWB5Ol+0mLNdkKn04NAkBm97L1+0I1NL8sTQZ4xfOAp5
	 LS2G2k8Lirk812bzTmdJIcsb06F7MWaUrclurUxs3ysW3oZa2ENhsm0NOtAlIwnAgH
	 HECQsTL3VhXxg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB73882116;
	Thu, 28 Mar 2024 17:24:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 683D31BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E6674168D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHPHGOBV6M9U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:24:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BCA84168F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BCA84168F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BCA84168F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EF675CE2C2B;
 Thu, 28 Mar 2024 17:24:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC3E7C433C7;
 Thu, 28 Mar 2024 17:24:41 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:24:39 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172439.GF651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-7-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-7-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646684;
 bh=QuRME2SHSSiGxluzScQO3eZiPChiSo+ltKYJW5/wGWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pi15a5lRtURzs96e6W60z49YqRCJbeCq4i6hUv2LKaMNFS/Dg4qpYivjq0jwOWJpo
 tb7VBfPKZ0gthpwl9hJJ0KM6eP+TCx9RgCQFxMUKgAxZ9dhQARgbf8dEiYqrfCYBPr
 5+KOW9GT9nAlKGQq4vd1rYyzzR686V0AMvWkMqH305OV1t1Xo6Wa7fCFcRc0XwYlY+
 HZzN9kNcKTI8/S38SqSJIvtTu6/TulhhNcnrVWbp+jUgDS0+2ezHO3BeL2MrqEy9JF
 r74f0mwtAf3xwrnovs2w6HAloY0SCpWc39NjLk5qwl3Vax/KrtO4NuKkwWGLTNYlaB
 WRFPCIHo+P/xg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Pi15a5lR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/7] i40e: Add helper to
 access main VEB
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:32AM +0100, Ivan Vecera wrote:
> Add a helper to access main VEB:
> 
> i40e_pf_get_main_veb(pf) replaces 'pf->veb[pf->lan_veb]'
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

