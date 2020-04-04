Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6BA19E26A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Apr 2020 05:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BF4A87CF9;
	Sat,  4 Apr 2020 03:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3PaLFGcWK1Zf; Sat,  4 Apr 2020 03:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46C8087CB1;
	Sat,  4 Apr 2020 03:00:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5E831BF852
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 03:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F3A220380
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 03:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dMb-8oA4TZz for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Apr 2020 03:00:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id C62602037A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2020 03:00:25 +0000 (UTC)
IronPort-SDR: HsCl7n1T/ZRjKsdTIP+Bv7lp6AN5Ydtv4fcgeGu168Og+Y0IsXrLOhgo2pnrE7YRBkk8U3FLoY
 9yGK2e+TO84Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 20:00:24 -0700
IronPort-SDR: KjPOau5Cw/U894ND0NXgU3roQW3f9vkELpjz0VO0DLIAjBKXTwWns1JvjtwaxmhROZGMH0R30q
 CFdrhMWO9TiQ==
X-IronPort-AV: E=Sophos;i="5.72,342,1580803200"; d="scan'208";a="243013043"
Received: from unknown (HELO localhost) ([10.254.70.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 20:00:24 -0700
MIME-Version: 1.0
In-Reply-To: <87lfnc9fqx.fsf@intel.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
 <20200403181743.23447-5-andre.guedes@intel.com> <87lfnc9fqx.fsf@intel.com>
From: Andre Guedes <andre.guedes@linux.intel.com>
To: Andre Guedes <andre.guedes@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Fri, 03 Apr 2020 20:00:22 -0700
Message-ID: <158596922224.30972.7562066188020088348@aguedesl-mac01.local>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: Refactor VLAN priority
 filtering code
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

> >  int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
> >  {
> >       if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
> >               igc_clear_etype_filter_regs(adapter,
> >                                           input->etype_reg_index);
> >  
> > -     if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
> > -             igc_clear_vlan_prio_filter(adapter,
> > -                                        ntohs(input->filter.vlan_tci));
> > +     if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
> > +             int prio = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
> > +                             >> VLAN_PRIO_SHIFT;
> 
> As you are refactoring this, one suggestion/question: is it possible to
> move the ntohs() and friends closer to writing/reading to/from the
> registers?

I left this ntohs() here on purpose. The reason why we need it is due to the
ethtool byte order convention for the vlan_tci, not the controller. So it makes
more sense to have it in igc_ethtool.c instead of igc_main.c.

> > +int igc_add_vlan_prio_filter(struct igc_adapter *adapter, int prio, int queue)
> > +{
> > +     struct net_device *dev = adapter->netdev;
> > +     struct igc_hw *hw = &adapter->hw;
> > +     u32 vlanpqf;
> > +
> > +     vlanpqf = rd32(IGC_VLANPQF);
> > +
> > +     if (vlanpqf & IGC_VLANPQF_VALID(prio)) {
> > +             netdev_dbg(dev, "VLAN priority filter already in use");
> > +             return -EEXIST;
> > +     }
> > +
> > +     vlanpqf |= IGC_VLANPQF_QSEL(prio, queue);
> > +     vlanpqf |= IGC_VLANPQF_VALID(prio);
> > +
> > +     wr32(IGC_VLANPQF, vlanpqf);
> > +
> > +     netdev_dbg(dev, "Add VLAN priority filter: prio %d queue %d",
> > +                prio, queue);
> 
> As you added a way to dump this register, I don't think this debug
> statement, and the one below, are that useful.

Even considering that we are now able to dump the VLANPQF register, these debug
messages are still useful for logging purposes. We want to know when VLAN
priority filters are added or deleted. The register dump gives us a snapshot
of the register value, not the sequence of events that happened to get there.

At least they have been useful to me while debugging this code.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
