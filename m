Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BA6B163ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 17:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02FE061349;
	Wed, 30 Jul 2025 15:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nb7JB7DhZh69; Wed, 30 Jul 2025 15:53:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A763A613DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753890820;
	bh=37nYHuXmvWYeRwv8dE4U1/FjvDCMUFSfqMBtabqRv8w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rtlX/N4jFhwG8fb++nDwsrw6uMDSbxlGxXKDlKgNihr1wENVNdgjgPep/ganTy3cP
	 rsjRUXw7OiTNs6luKHM5TZW/S6fQwOrh8/DKbVg/Wx0pNk/yptRgzjuyGPpygeO/He
	 dPqt3ONssYJYVStOGeL2sXroE7TzDsD26tM1pvI4vOox04huD5ebjkP+rn41c8wsM9
	 87JKfXzEmWGRiw6cAz8EOMiNVNwNrhJ+pzbHizjjPLpNM8YJqd14raLaJDQoutyVua
	 17qRk/F1GsbJfZwJIqSR657yVbbofL3X3/bxlcTarDK/SPsZ/2a6aClE8Bdy+n436P
	 s5TIzKu/BIn+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A763A613DC;
	Wed, 30 Jul 2025 15:53:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EE07186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 15:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C5E440303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 15:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wM0qgTIJ53ap for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 15:53:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CD3240336
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CD3240336
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CD3240336
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 15:53:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E517345039;
 Wed, 30 Jul 2025 15:53:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB900C4CEE3;
 Wed, 30 Jul 2025 15:53:36 +0000 (UTC)
Date: Wed, 30 Jul 2025 16:53:34 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250730155334.GK1877762@horms.kernel.org>
References: <20250730145209.1670909-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250730145209.1670909-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753890817;
 bh=qm14rsLPIwEBCD2eaCO9J84G5ClWgITQ8doS3N1jx80=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nskOhZaPP4A8r9ye04+aw+a9sx2BDcCj7igCM9GF0YzDQUmL+2/rzEc0iWjap8v7n
 atrrTz0F5aTfukf07PJyuuNqCtgAxRxthGjqGiuv6WzHkJ2wBbibhLurzfg/oCGg7U
 JO9Wwr4DHTmQWipWEMqirV7PnimxcA78Lw1wTCEGjdY5+lzsaBmpzoB8hXaj9PsV+y
 CTjPJIBlkbT+wjTG1qGBtPtDzGViAyap4Ci4ok3pMUIXE4FVj5rh9PSLwsGZjYdRyJ
 y7cCrpGpBct2NzJTFDAlBtXSZFr9riOF2jhNMAKJQVHC/5jzyPMy3PT8NXlagKhjfq
 KB3kf8F8xJR5A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nskOhZaP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix
 ixgbe_orom_civd_info struct layout
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

On Wed, Jul 30, 2025 at 04:52:09PM +0200, Jedrzej Jagielski wrote:
> The current layout of struct ixgbe_orom_civd_info causes incorrect data
> storage due to compiler-inserted padding. This results in issues when
> writing OROM data into the structure.
> 
> Add the __packed attribute to ensure the structure layout matches the
> expected binary format without padding.
> 
> Fixes: 70db0788a262 ("ixgbe: read the OROM version information")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> index 09df67f03cf4..38a41d81de0f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> @@ -1150,7 +1150,7 @@ struct ixgbe_orom_civd_info {
>  	__le32 combo_ver;	/* Combo Image Version number */
>  	u8 combo_name_len;	/* Length of the unicode combo image version string, max of 32 */
>  	__le16 combo_name[32];	/* Unicode string representing the Combo Image version */
> -};
> +} __packed;

...

Hi Jedrzej,

I agree that this is correct. Otherwise there will be a 3 byte hole before
combo_ver and a 1 byte hole before and combo_name. Which, based on the
commit message, I assume is not part of the layout this structure
represents.

A side effect of this change is that both combo_ver and elements of
combo_name become unaligned. As elements combo_ver does not seem to be
accessed directly, things seem clean there. But in the case of combo_ver,
I wonder if this change is also needed. (Compile tested only!)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 71ea25de1bac..754c176fd4a7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3123,7 +3123,7 @@ static int ixgbe_get_orom_ver_info(struct ixgbe_hw *hw,
 	if (err)
 		return err;
 
-	combo_ver = le32_to_cpu(civd.combo_ver);
+	combo_ver = get_unaligned_le32(&civd.combo_ver);
 
 	orom->major = (u8)FIELD_GET(IXGBE_OROM_VER_MASK, combo_ver);
 	orom->patch = (u8)FIELD_GET(IXGBE_OROM_VER_PATCH_MASK, combo_ver);
