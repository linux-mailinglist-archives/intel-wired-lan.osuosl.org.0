Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 112DB18C2A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 22:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDCB78665F;
	Thu, 19 Mar 2020 21:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0RQLSZubLVa; Thu, 19 Mar 2020 21:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 487D786885;
	Thu, 19 Mar 2020 21:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70FE71BF20B
 for <intel-wired-lan@osuosl.org>; Thu, 19 Mar 2020 21:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BF89885C1
 for <intel-wired-lan@osuosl.org>; Thu, 19 Mar 2020 21:59:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUe9Y+bk4Ms2 for <intel-wired-lan@osuosl.org>;
 Thu, 19 Mar 2020 21:59:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BAB1887BC8
 for <intel-wired-lan@osuosl.org>; Thu, 19 Mar 2020 21:59:13 +0000 (UTC)
IronPort-SDR: dm7fEpZFHcgqIEB7PsZD0KrsF1NbLNog4kIYSS5FUiZ+jvqo3NtYr4vgBom/W7yTKsaY1eX0rN
 iefDFNLLrokQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 14:59:13 -0700
IronPort-SDR: omKRRIIM10WffYZTHxGq3TxasXuhwkL4lBbeuImcRPik4PNRQ7/02jzZOvv/snPIGGNVp4Hx43
 BQewTR5LAJWQ==
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="238606433"
Received: from aarayaol-mobl.amr.corp.intel.com (HELO localhost)
 ([10.254.102.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 14:59:13 -0700
MIME-Version: 1.0
In-Reply-To: <20200318135446.10921-1-vitaly.lifshits@intel.com>
References: <20200318135446.10921-1-vitaly.lifshits@intel.com>
From: Andre Guedes <andre.guedes@linux.intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
Date: Thu, 19 Mar 2020 14:59:12 -0700
Message-ID: <158465515217.38369.8668630576224913708@aarayaol-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: add support to interrupt,
 eeprom, registers and link self-tests
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vitaly,

Quoting Vitaly Lifshits (2020-03-18 06:54:46)
> +u64 igc_link_test(struct igc_adapter *adapter, u64 *data)
> +{
> +       bool link_up = false;

No need to initialize this variable since it is not read anywhere before
assignment in the end of this function.

> +
> +       if (IGC_REMOVED(adapter->hw.hw_addr)) {
> +               *data = 1;
> +               return 1;
> +       }
> +       *data = 0;
> +
> +       /* add delay to give enough time for autonegotioation to finish */
> +       if (adapter->hw.mac.autoneg)
> +               ssleep(5);
> +
> +       link_up = igc_has_link(adapter);
> +       if (!link_up)
> +               *data = 1;
> +
> +       return *data;
> +}

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
