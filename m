Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1957F7F7251
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:02:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DD076150E;
	Fri, 24 Nov 2023 11:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DD076150E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823763;
	bh=TCCSqShAfRdj/xEb1jLj4lIcX/O2QotTTII8q7QbCNY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lQyEIiufYx4Oi52mQCey5R1QW0G+jZScHKhRjwmvlajxCnE1daYlCwt3TGf6IQ+am
	 x3Vw+Eb/sBSpWCeqdayKJVuLHvslF9/a3SSIkDLYEBSTpt/ZTXhsKETvrKNOCxZckB
	 XDmfyMhHD0bEjjULx3PYFqhtKYgnUAx73FERTt3UId7lOulpcez5JZFN3pd0ry4HyS
	 K9bE+BW6GwHBMe4obqqEGjX1xuISPT1bpLntek2DWuFkSi/UYnfGiWOeQIqxqLYLM8
	 A2CksUsLIvN6XrhyIGkS0VB2HiGQiRrCs4LKrMPpB1xRxBQlMP4fCHHaSB4F/ea4fW
	 kXmFM3qwJkBdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52YrVsvEPs3T; Fri, 24 Nov 2023 11:02:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B97B60B0B;
	Fri, 24 Nov 2023 11:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B97B60B0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B08511BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9531541A13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9531541A13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mcqWG4uZksnL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:02:36 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1B9E401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1B9E401D2
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0A18E62154;
 Fri, 24 Nov 2023 11:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 892BEC433C8;
 Fri, 24 Nov 2023 11:02:34 +0000 (UTC)
Date: Fri, 24 Nov 2023 11:02:32 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124110232.GL50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-13-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-13-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823755;
 bh=zyIkAtGTekyXjo1U/UaQ4AO1lJnChKX2oIfxsqjAqVQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JKRoHLs2zVpaB7cDoNeAK5wIOuEW1RbiWZRFpEvYrlsot7VYb2ysxLhUqelKOyHtq
 vG90+iowEjiqHV38YY34KAvmwFF42Pg0R8swSntfnmlnRmOuVKiuBZPOKwL5m8E0rv
 7yA+9dd5a2S6xDnNi4l9frLtBv4jQ6wzaGXlElw/J6gXav79Zkyw81YpiuwwbrRiw/
 XSVMauruz922Inyxr8Nspp495mpOuPebLg6irVkINkPvsmtBtzlLTg0Rkbd7B7FSe8
 P7U+Nm0Jxw7CKDMlueRh01QMW4mOCgtTw2pVeMBh4l5D1usVAPpCbTF3eJAbtwdJ8j
 B5nfmMbtfuWgA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JKRoHLs2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 12/13] iavf: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:20PM -0800, Jesse Brandeburg wrote:
> Refactor the iavf driver to use FIELD_GET() for mask and shift reads,
> which reduces lines of code and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and
> then manually repaired in a later patch.
> 
> @get@
> constant shift,mask;
> expression a;
> @@
> -((a & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
