Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5FFAD028D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jun 2025 14:51:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACB6684EDB;
	Fri,  6 Jun 2025 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXMYlwhgeSoo; Fri,  6 Jun 2025 12:51:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B85084051
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749214260;
	bh=KuUKPdbKHzQGFeVPwVOGMJ1LIsnXKi5FBUITVJPKuQY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UaDGvKpxCt6n+qoT6q5VE9kHCGJY6LUtDIyEPhUcqS7p0axtXTpqs0FAEtxdh56v9
	 95KqYtph8cLsQlDdpn21vrUHhC9bwg1PeS1Fw7Mb860Ve2SpIyMCl2n04/uRN5DcVE
	 CR4SAUi+avvmWYHN+7h5ydjFNghApR42mSICb6dcFK68ujh+w0KnbGU4fD0vpQ6/ko
	 xM0r0qOWnQtVpAofSKtZxuLeHmfKaCl/h+goTXE/evb9byBX6pxz++mZ6Wgp8TDuYg
	 8thxa6xs6noeKMa7cpu2dEQ7djJLvgDIbj29hGbJVwG+Vkak5WAeyeplHV+43IyO79
	 8oxqYUVeIBmag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B85084051;
	Fri,  6 Jun 2025 12:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 436341A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29E8640867
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:50:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1SQpK6f_8mYh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jun 2025 12:50:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5E9340805
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5E9340805
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5E9340805
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:50:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 253E25C62D3;
 Fri,  6 Jun 2025 12:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C671DC4CEEB;
 Fri,  6 Jun 2025 12:50:55 +0000 (UTC)
Date: Fri, 6 Jun 2025 13:50:53 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>
Message-ID: <20250606125053.GD120308@horms.kernel.org>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
 <20250520110823.1937981-10-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520110823.1937981-10-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749214257;
 bh=+p2DZSFTm66PxkpOawJ0N9At4uCZLvjiuZ2KtwQ0YiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dv7RFqbi958ihacr9YitAYENyxMHHGYR1P998+qqQ4nfrFJ6drtyrLo/kptNUUBZv
 HLBEkgiz91SWV3yfnG6qhIsRs3T35HFT1IE///P4tjXLcB1MbwHAHWwZ5YVi6wTMxc
 6BOqQ/wAdl4yqY+czFwlt1+INe7Npouj0bQm9vj7iut9mO0DmLV/ZSGegqKViPK92e
 YpiPdI4nubYtdo06eFOMZwpsI4EAuLh6BmK1p3Zva0Vk5JPTCtdtDwZDRGpEYEqGx2
 gYXZ9vii+cQIsq2b1PgDrML6KwFrXHXOclZL0JKtR/Y8mUICxO/oEQyDWkz6D5Duch
 DxkWMJKPaOVsw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Dv7RFqbi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: read Tx timestamps
 in the IRQ top half
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

On Tue, May 20, 2025 at 01:06:29PM +0200, Karol Kolacinski wrote:
> With sideband queue using delays and spin locks, it is possible to
> read timestamps from the PHY in the top half of the interrupt.
> 
> This removes bottom half scheduling delays and improves timestamping
> read times significantly, from >2 ms to <50 us.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

