Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A11A13F33
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 17:22:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9131441601;
	Thu, 16 Jan 2025 16:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QA1svTdX6C4g; Thu, 16 Jan 2025 16:22:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EA7D417C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737044527;
	bh=sllsu3PJ6MW6vr1S+neHwFg2i8QmZtBS6bkTsrDO4ds=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7NJHNfzdtOHf9tefse4BiitnLhu13p2mR95jv0xJSc7OYnnh29xs8985zBgxB8qss
	 eMZ4Pd8UPGrW2WXwl06yBOHLElomL/XR1smrOy5fEQ4xKU0aTS1CRk0bxCeTJo/NOK
	 W95U+/Jk5Sx7vmG7locKCBbhppBASJgBiiecRbTZZZ4BVEzRCPwJakq1GaYvqhep6M
	 BU/NRxKbT/hLkqZalFRLG6mY814FkcGkhL8bbraVVYlR7qA20vNw2cfh1w7iHxmjh5
	 6kjThwc5BRCD8S/wXbmQF7rVCQ67hQ2Kr+A+U0m8OjG5V/UCHCeO4Sqn7UoeJDJXH1
	 9DRYo659wCDnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EA7D417C7;
	Thu, 16 Jan 2025 16:22:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C068EB89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:22:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B85CA417FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:22:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0nYJ2o0bfDZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 16:22:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76098413DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76098413DA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76098413DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 16:22:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7DE185C5E7A;
 Thu, 16 Jan 2025 16:21:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F50C4CED6;
 Thu, 16 Jan 2025 16:21:59 +0000 (UTC)
Date: Thu, 16 Jan 2025 16:21:57 +0000
From: Simon Horman <horms@kernel.org>
To: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250116162157.GC6206@kernel.org>
References: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737044521;
 bh=WgE/p3xzfDcfy+4UqXL6yaoPsBBg9iLOUF8LYdyM5AQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tLyrLP7Pzcle2tB2k7AFT8NUQASehqKLJLacu+N21q7RB2Ou/Zf4/PFhmgR4aRNGT
 66xgBZCswLakLRRkNY+b5dth4SigytqG5GJpF3fw9GcSm0TwLiaU8vcKZDfrPIlsT1
 SsoKNcEN92PQhduwNqDKCVbWUIY50PbpBfx9D3y8IBPQzl+68cLUMeIToTU8Oec/VB
 WDjUhhoGtpbQPJv0rOHCIMUJATeOzQmmgDHIsrpAPy6GcXSPCYfQ+0m/+5pye3mspO
 Nbpc0e514wYZzOEVh7MnrwVSkNBXb0aTEefsABEztj31KsKcq6qyRECGaSLD3CsJlV
 xovcDwwAJ4+rA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tLyrLP7P
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian
 handling for ACI descriptor registers
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

On Wed, Jan 15, 2025 at 09:11:17AM +0530, Dheeraj Reddy Jonnalagadda wrote:
> The ixgbe driver was missing proper endian conversion for ACI descriptor
> register operations. Add the necessary conversions when reading and
> writing to the registers.
> 
> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
> Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>

Hi Dheeraj,

It seems that Sparse is not very happy about __le32 values appearing
where u32 ones are expected. I wonder if something like what is below
(compile tested only!) would both address the problem at hand and
keep Sparse happy (even if negting much of it's usefulness by using casts).

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
index 6639069ad528..8b3787837128 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
@@ -150,6 +150,9 @@ static inline void ixgbe_write_reg(struct ixgbe_hw *hw, u32 reg, u32 value)
 }
 #define IXGBE_WRITE_REG(a, reg, value) ixgbe_write_reg((a), (reg), (value))
 
+#define IXGBE_WRITE_REG_LE32(a, reg, value) \
+	ixgbe_write_reg((a), (reg), (u32 __force)cpu_to_le32(value))
+
 #ifndef writeq
 #define writeq writeq
 static inline void writeq(u64 val, void __iomem *addr)
@@ -172,6 +175,9 @@ static inline void ixgbe_write_reg64(struct ixgbe_hw *hw, u32 reg, u64 value)
 u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg);
 #define IXGBE_READ_REG(a, reg) ixgbe_read_reg((a), (reg))
 
+#define IXGBE_READ_REG_LE32(a, reg) \
+	le32_to_cpu((__le32 __force)ixgbe_read_reg((a), (reg)))
+
 #define IXGBE_WRITE_REG_ARRAY(a, reg, offset, value) \
 		ixgbe_write_reg((a), (reg) + ((offset) << 2), (value))
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 3b9017e72d0e..8d9b91375584 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -113,7 +113,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 
 	/* Descriptor is written to specific registers */
 	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
-		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), cpu_to_le32(raw_desc[i]));
+		IXGBE_WRITE_REG_LE32(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
 
 	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
 	 * PF_HICR_EV
@@ -145,7 +145,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_SV)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = le32_to_cpu(raw_desc[i]);
+			raw_desc[i] = IXGBE_READ_REG_LE32(hw, IXGBE_PF_HIDA(i));
 		}
 	}
 
@@ -153,7 +153,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = le32_to_cpu(raw_desc[i]);
+			raw_desc[i] = IXGBE_READ_REG_LE32(hw, IXGBE_PF_HIDA_2(i));
 		}
 	}
 
