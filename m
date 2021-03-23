Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B803346933
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 20:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8865340500;
	Tue, 23 Mar 2021 19:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1niBzYomdCJ; Tue, 23 Mar 2021 19:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44D4A404FC;
	Tue, 23 Mar 2021 19:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9114F1BF334
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 311D283D63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zmf-N4ycXDlH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 19:39:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC8898343F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:39:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 247C3614A5;
 Tue, 23 Mar 2021 19:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616528365;
 bh=tnWhfJQiaw5ptja+gnHDao9U3U7TNeGkUgzd8HGqX6M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=J803I7TanM+5tCsc4HOkg9etCbENfY9Os0QAKLg1TBkk6guFrojwPL8wMjCLhUcLI
 P5oJ6/Dg/TbiQCy9MBIKviL8zMS+mtcxxsr491pepxwCAH8QuWpty5m2TJ4+29lG8+
 FyOP4fewglEZVpgSdGSAqfQqN2CBlE5wefJseV+T153ZQvXO8m3kP0u3MfL+PQEXeR
 8dxpeCmVNK/0IE/+mK943kLJJUolc9NtFPMjG5KsWiP1kqrtRljKjmvSJZ6/q1/M1p
 ZqxXdpM4tO54KhQNH2wPhwP+i9bkgmCo7E0jf9Yw3jxVqlj4rNhFsVUt9fbhzUfej/
 DedIhuOtq72EQ==
Date: Tue, 23 Mar 2021 14:39:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210323193923.GA597480@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322161822.1546454-4-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, linux-pci@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 22, 2021 at 09:18:22AM -0700, Vinicius Costa Gomes wrote:
> i225 has support for PCIe PTM, which allows us to implement support
> for the PTP_SYS_OFFSET_PRECISE ioctl(), implemented in the driver via
> the getcrosststamp() function.

> +static bool igc_is_ptm_supported(struct igc_adapter *adapter)
> +{
> +#if IS_ENABLED(CONFIG_X86_TSC) && IS_ENABLED(CONFIG_PCIE_PTM)
> +	return adapter->pdev->ptm_enabled;
> +#endif

It's not obvious why you make this x86-specific.  Maybe a comment?

You shouldn't have to test for CONFIG_PCIE_PTM, either.  We probably
should have a pdev->ptm_enabled() predicate with a stub that returns
false when CONFIG_PCIE_PTM is not set.

> +	return false;
> +}

> +/* PCIe Registers */
> +#define IGC_PTM_CTRL		0x12540  /* PTM Control */
> +#define IGC_PTM_STAT		0x12544  /* PTM Status */
> +#define IGC_PTM_CYCLE_CTRL	0x1254C  /* PTM Cycle Control */
> +
> +/* PTM Time registers */
> +#define IGC_PTM_T1_TIM0_L	0x12558  /* T1 on Timer 0 Low */
> +#define IGC_PTM_T1_TIM0_H	0x1255C  /* T1 on Timer 0 High */
> +
> +#define IGC_PTM_CURR_T2_L	0x1258C  /* Current T2 Low */
> +#define IGC_PTM_CURR_T2_H	0x12590  /* Current T2 High */
> +#define IGC_PTM_PREV_T2_L	0x12584  /* Previous T2 Low */
> +#define IGC_PTM_PREV_T2_H	0x12588  /* Previous T2 High */
> +#define IGC_PTM_PREV_T4M1	0x12578  /* T4 Minus T1 on previous PTM Cycle */
> +#define IGC_PTM_CURR_T4M1	0x1257C  /* T4 Minus T1 on this PTM Cycle */
> +#define IGC_PTM_PREV_T3M2	0x12580  /* T3 Minus T2 on previous PTM Cycle */
> +#define IGC_PTM_TDELAY		0x12594  /* PTM PCIe Link Delay */
> +
> +#define IGC_PCIE_DIG_DELAY	0x12550  /* PCIe Digital Delay */
> +#define IGC_PCIE_PHY_DELAY	0x12554  /* PCIe PHY Delay */

I assume the above are device-specific registers, right?  Nothing that
would be found in the PCIe base spec?

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
