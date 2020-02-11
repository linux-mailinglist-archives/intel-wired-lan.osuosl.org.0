Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6DF1597F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2020 19:16:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 048D686761;
	Tue, 11 Feb 2020 18:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id msLNQp+0yylb; Tue, 11 Feb 2020 18:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40CA18671A;
	Tue, 11 Feb 2020 18:16:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 659A31BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 18:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6174B8666F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 18:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ykf17dn8ZvmP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2020 18:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C768B86761
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 18:16:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 10:16:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="347328800"
Received: from titagi-mobl.amr.corp.intel.com (HELO localhost) ([10.254.4.81])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Feb 2020 10:16:04 -0800
MIME-Version: 1.0
In-Reply-To: <87pnemx6xi.fsf@linux.intel.com>
References: <20200207182443.1501016-1-vinicius.gomes@intel.com>
 <20200207182443.1501016-3-vinicius.gomes@intel.com>
 <158136684850.75536.15541483288653337386@1.0.0.127.in-addr.arpa>
 <87pnemx6xi.fsf@linux.intel.com>
From: Andre Guedes <andre.guedes@linux.intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <158144496367.84624.2078546125857384447@titagi-mobl.amr.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 11 Feb 2020 10:16:03 -0800
Subject: Re: [Intel-wired-lan] [next-queue PATCH v2 2/2] igc: Add support
 for ETF offloading
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

Hi Vinicius,

Quoting Vinicius Costa Gomes (2020-02-10 17:13:13)
> >> @@ -4600,6 +4661,9 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
> >>         case TC_SETUP_QDISC_TAPRIO:
> >>                 return igc_tsn_enable_qbv_scheduling(adapter, type_data);
> >>  
> >> +       case TC_SETUP_QDISC_ETF:
> >> +               return igc_tsn_enable_launchtime(adapter, type_data);
> >
> > Consider the scenario where both TAPRIO and ETF offloads are disabled and we
> > want to enable ETF offload. ETF depends on adapter->base_time is set to work
> > properly, but I couldn't find where in this patch it is set. Could you please
> > clarify that?
> 
> '->base_time' doesn't need to be set, i.e. if it's zero (which is the
> case that only ETF offloading is enabled), it should be fine. H
> 
> ow we calculate the launchtime in igc_tx_launchtime() is able to handle
> 'base_time_ being zero just fine, and the BASET_{L,H} registers will
> have sane values when it's zero as well.

If '->base_time' is never set, I suspect ETF disabling has an issue. See this
piece of code:

int igc_tsn_offload_apply(struct igc_adapter *adapter)
{
        bool is_any_enabled = adapter->base_time || is_any_launchtime(adapter);

        if (!(adapter->flags & IGC_FLAG_TSN_QBV_ENABLED) && !is_any_enabled)
                return 0;

        ...
}

By the time igc_tsn_offload_apply() is called, we had already set
'ring->launchtime' to false. Since IGC_FLAG_TSN_QBV_ENABLED isn't set and
'is_any_enabled' is false, we return without calling igc_tsn_disable_offload().

What am I missing?

Thanks,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
