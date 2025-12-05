Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B696CA81C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 16:11:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CC93606C4;
	Fri,  5 Dec 2025 15:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UnI5L99uG6nA; Fri,  5 Dec 2025 15:11:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3A8361CEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764947488;
	bh=rTYz3X8IR6znjVFq2ide3bkVAPpgJHTwjknKT+LXwqI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Gb7vJgqjE8epksNI5Bnb6QC7YUDl2ejqpu2fjp0UfOTjA4J13gNnt3xIZ2g7EibKi
	 nIzo3fnsPcICisaGT6Egk/Owh6f8/WE+rICL0Oku21jE9MS0b90OHn0n/CFrGCYFVl
	 E9SuprwMIX61ZKqoVIRQPMS4Se4/VqAoFbLqftYBsIHGd9WwKWks88iZU/x9C1eajx
	 hy6akmVGtdw4h7rRcj/a48YmCi4h8bBtsGHOAly6ldNTbY5iEqx6T5/xv0C86IHhBJ
	 9c2JkNJ64/+hF2dV3fwlXl4DgsDdJii3AsbT/dP5Ujx2Ytj/oDOkm2MU8B0xtizKnK
	 l3wQsAY4sDgVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3A8361CEE;
	Fri,  5 Dec 2025 15:11:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D43231A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 15:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3E5440400
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 15:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLZMvuLWYEMH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 15:11:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 05B6C403F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05B6C403F4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05B6C403F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 15:11:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9F7BB43E50;
 Fri,  5 Dec 2025 15:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61291C4CEF1;
 Fri,  5 Dec 2025 15:11:23 +0000 (UTC)
Date: Fri, 5 Dec 2025 15:11:21 +0000
From: Simon Horman <horms@kernel.org>
To: Aaron Ma <aaron.ma@canonical.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aTL2GcF6CTXRU5Wt@horms.kernel.org>
References: <20251205082459.1586143-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205082459.1586143-1-aaron.ma@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764947485;
 bh=rTYz3X8IR6znjVFq2ide3bkVAPpgJHTwjknKT+LXwqI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DC/jq4ubJMaW+v+fns6X79hLZyq370HP4m1mPStWc8Yt0epL71c9d1+sdj0L2BMIj
 zRVIX6tkO9mwcbJjAkL1WgD39SYBuOP4y6eAtOSBCMiGaFAhWkCxmBSbxM3IlEu0+B
 YCQZ6euQGUSVkooiHbJhMmghqUNNPI5ffa5IgxnyYkffbzz2aYqYlXaMSoOxykqIcG
 hoEal5Wc3ctm+zCNlCRjx8qH4zv6tO1ciaG4QbBoFS1hhoUuDjxUGENPO7SNmXKdue
 kJ8EcIVnzi5hzKDZOlMRvAfXUfEQlZLievVCc5Jc+E7CMawqqojh717fnK2fPPLgbA
 62Mbic3jG16Tg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=DC/jq4ub
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] ice: Fix NULL pointer
 dereference in ice_vsi_set_napi_queues
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

On Fri, Dec 05, 2025 at 04:24:58PM +0800, Aaron Ma wrote:
> Add NULL pointer checks in ice_vsi_set_napi_queues() to prevent crashes
> during resume from suspend when rings[q_idx]->q_vector is NULL.

Hi Aaron,

This is not a review. But a request for the future:
please don't post revised patchsets to netdev more than once every 24h.

Reasons for this include: allowing allow time for review; and reducing
load on shared CI infrastructure.

Link: https://docs.kernel.org/process/maintainer-netdev.html

Thanks!
