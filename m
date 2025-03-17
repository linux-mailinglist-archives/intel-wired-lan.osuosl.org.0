Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2A4A65837
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 17:36:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72CAD60B13;
	Mon, 17 Mar 2025 16:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TJLww09QD6Wi; Mon, 17 Mar 2025 16:36:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEDE360B06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742229400;
	bh=vEs2+Dwbk1OJ0qFRCW9yyKZKk5AXkMVF/A9eZfKpVSI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NQCUqOwt4Rm8twt+E0/qVN102SiN+DM/BtZjc2XohQQ8eBRpsRAmVRsAcPAtKQY63
	 /wn7n4QdE6p1+0bazzzr5lLCzV9SiqFyJNiS80LZ2//ULnuAB1EMu2sdDhhHJQ8a3i
	 iI1MtCq1e//cyV98fZYAagA7I+ka62dl8fPdqF3Iq+tXalQ1UYy2j8/r+dArU19qxn
	 cSR/lilN903rT42ZXbVdrY/oBzE33hqcijW9cSDuN4BXMkJHMnozY9NaM9sT8dtkwu
	 bMKGatASek7AKKlTYaflfwdxRB3+DlBnnAbO/+N0hGQFk/EBvRBSYyytCfNIhTHmqT
	 I+4pVnJvRIOfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEDE360B06;
	Mon, 17 Mar 2025 16:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D15812E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F075A60B0C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AeFBlrxMJGkf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 16:36:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DDE260B06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DDE260B06
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DDE260B06
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:36:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B18665C0F0C;
 Mon, 17 Mar 2025 16:34:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26BA7C4CEE3;
 Mon, 17 Mar 2025 16:36:35 +0000 (UTC)
Date: Mon, 17 Mar 2025 16:36:34 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250317163634.GE688833@kernel.org>
References: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
 <20250310122439.3327908-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310122439.3327908-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742229397;
 bh=Jo5bYLXd2n3FxjbuIWaKZfgiA2G8U5y0lBTzVuRSLVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nT7f2LfZLmvgPljLSXdlXzdjk3UfhjNzIwcO1r7yQnwaOfNBK12mKD9TMx7CyfJsu
 hm6o812LhzNDhS0nbNGQ95cb9Ianx0UNU792TqNnA7/qQqTudqUMYpcmz021DxL/ti
 DUUoquUwEMSLQAd/Kg4Rl8t5gAOAcnjp1tmIEePcrkSy+oJRZ9B/vYQVddW7biSZ92
 SzNrH1RDC0iKPskc+aUrIiSweol6LMY/UPi9+rJ18vb3ChWPCxvXeBz84hqRuo0kby
 jX88P68QS1295RL39epC4Yds7mLxzE4ncxwJrIFUxGMBqU8ky/G38BBRitM2mxlkrB
 R4QguFT/fzQcw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nT7f2LfZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: enable timesync
 operation on 2xNAC E825 devices
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

On Mon, Mar 10, 2025 at 01:24:39PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> According to the E825C specification, SBQ address for ports on a single
> complex is device 2 for PHY 0 and device 13 for PHY1.
> For accessing ports on a dual complex E825C (so called 2xNAC mode),
> the driver should use destination device 2 (referred as phy_0) for
> the current complex PHY and device 13 (referred as phy_0_peer) for
> peer complex PHY.
> 
> Differentiate SBQ destination device by checking if current PF port
> number is on the same PHY as target port number.
> 
> Adjust 'ice_get_lane_number' function to provide unique port number for
> ports from PHY1 in 'dual' mode config (by adding fixed offset for PHY1
> ports). Cache this value in ice_hw struct.
> 
> Introduce ice_get_primary_hw wrapper to get access to timesync register
> not available from second NAC.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

