Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1832A3A7BD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 20:37:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67722815CC;
	Tue, 18 Feb 2025 19:37:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1tOA8i58x5DN; Tue, 18 Feb 2025 19:37:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C675481DE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739907425;
	bh=g4axMjc0b91j83qqiQbY0wKAwyQUMIUjvUgdeS1hl4k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HDIc++yD+cEZD6DssXNaaO0EkKkbZZSSfik9k9oCaKE93DbPVXDyUSwab39gB6IuS
	 TBu8eKFJi4f4LrKeYrp4Zym97ajDLTDFuBOPr8dp8EWmlcX/MAV2marO4Y972dCWxj
	 RIMxbVzR/RP/C7vb6HdahQwAxV3YWE2UpzQ7ERuRy2OwzAASWpCgmd/4vzQ19w7f5j
	 dldWzUMvZQKySAv7u/VcpUA8q98FUYRE8TiMD4UzjgaXZWMwe2f4YkyWJtz3NF9bxM
	 4sLFkY66JiFemhsRG2bTwg0cklK6oO9//HYMj9AKLVpP+50bd0OwnoOsZFtrU5dBmm
	 u7M/Tnw/N+Rcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C675481DE7;
	Tue, 18 Feb 2025 19:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ADF42968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F6B340821
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LLGGcl-PSMZx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 19:37:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B64594075F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B64594075F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B64594075F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 19:37:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C2CB45C00B0;
 Tue, 18 Feb 2025 19:36:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF02EC4CEE9;
 Tue, 18 Feb 2025 19:36:59 +0000 (UTC)
Date: Tue, 18 Feb 2025 19:36:57 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com,
 pmenzel@molgen.mpg.de
Message-ID: <20250218193657.GK1615191@kernel.org>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-5-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217090636.25113-5-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739907421;
 bh=+hqWcriKAA9mO5bQ4FjEZdNPrh+j9atAdoHgsaVxT28=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GMVq5M+/he1PfgVfQ/SIiUS2C9EhX/2oacPuPat3LAwyGgdFfJtiV99US3PxFa/fw
 QeVYttFeFaKFdgz4isw2rfq+FB6dRx2Ebp9Rc7PICDTyEcmwaJJOo4jFrfgl1xddhc
 1M2UDdtgQP0IsewSiQte+LtBMppEnY+hFXEAbIapUzTBjP5FnOGKJHEV0vPifb+PXk
 BuR9Eg1npSn4aNbsmsvIJ+yW9S97AKJFgr/3sqNlIzICUS7Jgx8h0tgYC/XHX9HObv
 w50j4KlVfz3Jehpl17Zy5kGCgzU7pxES1U534uqN6qygpALx5aMMFBhTpHaBNI835I
 GRluDThCo3krg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GMVq5M+/
Subject: Re: [Intel-wired-lan] [iwl-next v3 4/4] ixgbe: turn off MDD while
 modifying SRRCTL
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

On Mon, Feb 17, 2025 at 10:06:36AM +0100, Michal Swiatkowski wrote:
> From: Radoslaw Tyl <radoslawx.tyl@intel.com>
> 
> Modifying SRRCTL register can generate MDD event.
> 
> Turn MDD off during SRRCTL register write to prevent generating MDD.
> 
> Fix RCT in ixgbe_set_rx_drop_en().
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

