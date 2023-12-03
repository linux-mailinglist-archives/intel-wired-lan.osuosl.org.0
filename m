Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6877D802340
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Dec 2023 12:42:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07E6460EEF;
	Sun,  3 Dec 2023 11:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07E6460EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701603737;
	bh=0pAPEeILTQzlDDIsNfeyctTZtrT576XTg2SLE/N6n8s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g6Tdo0Y2XeGENrbFHp0L40SegbYGaRIRFrbi6ezmMQgXric2YnChhgS6KFJRc3xPs
	 KARmfHvu4Zt7rsLIhXo1dKWzTCjOOEtYNfUtBF74vHsId+N2J0QioZf7uG9Nr+MaUI
	 ZBR8EcOghVwD+38eRtA56aR+4xvTFpOC3PgvOLOUXV+A6oeTgBy9/HGMhMXgdDHPHb
	 N9Sv9ZhUms+BgsiqIayFaWPEhy8DXYzorvCQ+e6WdGMGe3UzuOem2abv7Gi9EUr4pL
	 QAb35gtH54ejzdwIUbpG5LZpMWeRmoSXjQzu0Mpq4PO1bd96uQGSocZChEalZKpp0m
	 Uxgtd4zC9ltkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewbpEWj3K3Tt; Sun,  3 Dec 2023 11:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9A9760EC0;
	Sun,  3 Dec 2023 11:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9A9760EC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 246841BF36E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 11:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08E6B60EC0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 11:42:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08E6B60EC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a_tXP9Hp2zMv for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Dec 2023 11:42:10 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B7D360E6D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 11:42:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B7D360E6D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B1E75CE0B10;
 Sun,  3 Dec 2023 11:42:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2ED5C433C9;
 Sun,  3 Dec 2023 11:42:03 +0000 (UTC)
Date: Sun, 3 Dec 2023 11:41:59 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231203114159.GH50400@kernel.org>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-4-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124150343.81520-4-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701603727;
 bh=yyB6miuV3QDfgKnJCr8YxHHVQ4FeW1IM6trz2iKW220=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qjYMVFOPP3usK2DsxR2PhtHpHYZ4WGTs6XUpZV3XMQXpqDA+9QKDyqaTkSbXkxBJ+
 WxygQf25Gdc2nlfqNmH26ZaPLuXlyfEA+jast5XjwuUaV2P/xGRMeMBJUPTSwsJnni
 YdFTs03N9MelOH7/scZz96jkvHYSCEqTXMcMFTHHM27y5O7Y52E3weMUVkiC0APDdn
 CO5oDRYWl0yzhVG2qSdgMuE1UQGGX0J7nkNYG+hxjJ54vq5TW7L7e26nJqLBWOdZue
 RBZfxMPrTVaQna3U3XoG8FQ1LBUG0OoEQC4o3sQ0fn9hnpvu476fRIFWhEJcOqkVb9
 iOkAWwSvm5LnQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qjYMVFOP
Subject: Re: [Intel-wired-lan] [PATCH v5 3/5] i40e: Add helpers to find VSI
 and VEB by SEID and use them
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 04:03:41PM +0100, Ivan Vecera wrote:
> Add two helpers i40e_(veb|vsi)_get_by_seid() to find corresponding
> VEB or VSI by their SEID value and use these helpers to replace
> existing open-coded loops.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
