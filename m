Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E31609AB3C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 18:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D8986079C;
	Tue, 22 Oct 2024 16:23:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UNDhLsLfWXfq; Tue, 22 Oct 2024 16:23:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C986078B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729614205;
	bh=lHYMFRln7DkzYKYUUESEl+l2jkavW0GVXYdCI+Xx1UM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kjn3FkiCN4TyJvcRqG6Bcx431hyP1S1UmHyjxvHIOkQjQQBM8O8SFrxOwf/fuGHwo
	 BSamuOW9R9+jqcHYj8tlbPvhoWGZGR3IkMnFDbduRKrorhjCXlQPM0YON4NEQfNHoe
	 tZWMy9WR0E0E2hPts3Z/Z4aYd4cEdf950wk4HNDmJydp2mEt+7Gu5szHYGe1FaTRed
	 1WcfkqxyMmw0qtuKfW/PNaK4zVFz5Bs3NwPXq/df/yC0yo92yEO/wEsI7Dwc8tK8et
	 vOQM9Nl/3xvGO1PXwEoB/gN7as50g1H32WUs0gA8YcBEgWEdSN50r28jOGWgtK5P5d
	 rOnnsgdlME8ZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4C986078B;
	Tue, 22 Oct 2024 16:23:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A6A8C2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 16:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71D114021C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 16:23:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ImH6lm7UAOmi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 16:23:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD87640202
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD87640202
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD87640202
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 16:23:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7FF7DA4416C;
 Tue, 22 Oct 2024 16:23:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51E48C4CEC3;
 Tue, 22 Oct 2024 16:23:20 +0000 (UTC)
Date: Tue, 22 Oct 2024 17:23:18 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241022162318.GC402847@kernel.org>
References: <20241021144841.5476-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021144841.5476-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729614201;
 bh=JJgCo88tGuMhAFJmSBRIceTat7BejVXhrhhQ0PBogrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sjfciD7rSl1rXhgzkbzRIHsA31/lwyKKanB2OkiX7jq+RtwD1a8qdxfVesmmvoJ+8
 S/y/9j3Te2nNubKEmB275gcSY0qRaxtb1C/xMdVnK7uUnwwDp6m9cfqv78wxIGF3nt
 zGBBgtQ2ZZs4IjJVcaCfb7bA8esGuCR+l0Yz2/zEeN+pAV86LlPlh1msYNeoARreBe
 IS32xIv4xJ6m0tnHQNxeYHMqiJxWXlYTLQO+t/WhCFrZ9Rh9RrhvTOEfxFKz0QytVl
 KbvDMcj75+oUOUreHmgbby0AwfDg1asfaSDZnT3WK+wbKB2rbPIanr8T1/1mjYECtT
 5iVRPBQm5c+QA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sjfciD7r
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbevf: Add support
 for Intel(R) E610 device
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 21, 2024 at 04:48:41PM +0200, Piotr Kwapulinski wrote:
> Add support for Intel(R) E610 Series of network devices. The E610
> is based on X550 but adds firmware managed link, enhanced security
> capabilities and support for updated server manageability
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

