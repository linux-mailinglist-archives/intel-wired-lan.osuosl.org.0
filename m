Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D1B346B2F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 22:38:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43C2660897;
	Tue, 23 Mar 2021 21:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvpnzFk9OH4y; Tue, 23 Mar 2021 21:38:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F1DF605D8;
	Tue, 23 Mar 2021 21:38:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA8521BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 21:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8003400C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 21:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJmI3Ia3cIFl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 21:37:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E950400BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 21:37:53 +0000 (UTC)
IronPort-SDR: t02ce+8XmE1q8HUAUT/x7p0BhqQ78yyKebmLzZyujb4kHROlqUfa3+3B3ENLJVJbyiLb1TK+1V
 zS2Ft1rga37Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="187255545"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="187255545"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 14:37:53 -0700
IronPort-SDR: 5FVXOxSzSoWYssa+tKWpCsLDImcTE/iCWmZMfH86422cWy9q8BlnGhR1Q2mRZmShib50hth0Sc
 5qTMra+2d/UQ==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="381503183"
Received: from ckane-desk.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.48.247])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 14:37:52 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20210323193923.GA597480@bjorn-Precision-5520>
References: <20210323193923.GA597480@bjorn-Precision-5520>
Date: Tue, 23 Mar 2021 14:37:52 -0700
Message-ID: <87eeg5k0un.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
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

Bjorn Helgaas <helgaas@kernel.org> writes:

> On Mon, Mar 22, 2021 at 09:18:22AM -0700, Vinicius Costa Gomes wrote:
>> i225 has support for PCIe PTM, which allows us to implement support
>> for the PTP_SYS_OFFSET_PRECISE ioctl(), implemented in the driver via
>> the getcrosststamp() function.
>
>> +static bool igc_is_ptm_supported(struct igc_adapter *adapter)
>> +{
>> +#if IS_ENABLED(CONFIG_X86_TSC) && IS_ENABLED(CONFIG_PCIE_PTM)
>> +	return adapter->pdev->ptm_enabled;
>> +#endif
>
> It's not obvious why you make this x86-specific.  Maybe a comment?

Sure. Will add a comment.

>
> You shouldn't have to test for CONFIG_PCIE_PTM, either.  We probably
> should have a pdev->ptm_enabled() predicate with a stub that returns
> false when CONFIG_PCIE_PTM is not set.

Makes sense. Will add that predicate for next version.

>
>> +	return false;
>> +}
>
>> +/* PCIe Registers */
>> +#define IGC_PTM_CTRL		0x12540  /* PTM Control */
>> +#define IGC_PTM_STAT		0x12544  /* PTM Status */
>> +#define IGC_PTM_CYCLE_CTRL	0x1254C  /* PTM Cycle Control */
>> +
>> +/* PTM Time registers */
>> +#define IGC_PTM_T1_TIM0_L	0x12558  /* T1 on Timer 0 Low */
>> +#define IGC_PTM_T1_TIM0_H	0x1255C  /* T1 on Timer 0 High */
>> +
>> +#define IGC_PTM_CURR_T2_L	0x1258C  /* Current T2 Low */
>> +#define IGC_PTM_CURR_T2_H	0x12590  /* Current T2 High */
>> +#define IGC_PTM_PREV_T2_L	0x12584  /* Previous T2 Low */
>> +#define IGC_PTM_PREV_T2_H	0x12588  /* Previous T2 High */
>> +#define IGC_PTM_PREV_T4M1	0x12578  /* T4 Minus T1 on previous PTM Cycle */
>> +#define IGC_PTM_CURR_T4M1	0x1257C  /* T4 Minus T1 on this PTM Cycle */
>> +#define IGC_PTM_PREV_T3M2	0x12580  /* T3 Minus T2 on previous PTM Cycle */
>> +#define IGC_PTM_TDELAY		0x12594  /* PTM PCIe Link Delay */
>> +
>> +#define IGC_PCIE_DIG_DELAY	0x12550  /* PCIe Digital Delay */
>> +#define IGC_PCIE_PHY_DELAY	0x12554  /* PCIe PHY Delay */
>
> I assume the above are device-specific registers, right?  Nothing that
> would be found in the PCIe base spec?

Yeah, these registers control the corrections the NIC hardware make to
the timestamps based on the PCIe link delays from the NIC to its
upstream PCIe port.

I don't remember seeing anything like that on the PCIe base spec. Will
take another look to make sure.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
