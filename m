Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD25C8C4003
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 13:45:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A307D4109D;
	Mon, 13 May 2024 11:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EhYUTTUJnHCz; Mon, 13 May 2024 11:44:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9847541705
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715600699;
	bh=ioQR78sP2jAkdO7zbsTMk5w3yTy0KMugwcZD8TW1Im4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rQUj84pBmJ466G+j7s2MheeZsdMn9EdqC/MLeqiOhp7A+SOVn3C6PeGiI4F4KBhGE
	 efUbnfqz8U3EJ6V6kc2Evmm4jdpUAjcAo46diAHMps+Mrv0fPFQsDQ6MNNiwyxfUpn
	 NgcTA9B3+U21X7sQRj6RIBqimY/xdK/To61GnCQ76JgfHJmcABRhwi8LBaeK3/6xDv
	 uvdPbk9gHajoepK0Bq+1II2U0vohSwuT6UjNM2+camg8WBELARjvzwLEWfonsn5FQS
	 1Ey3vjAtfPaGYql0ON1/M1ca8nWEt5qZwiyV4TrnTnlWMaqrcOwUHzUxKKtQ0SLfGS
	 Fl48wQdO2Iy/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9847541705;
	Mon, 13 May 2024 11:44:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D77B1BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAB946084E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H8qppYka3faL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 11:44:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ABC01607B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABC01607B3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABC01607B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:44:51 +0000 (UTC)
X-CSE-ConnectionGUID: pNCWGQaBTeiiMzyZNNf7DQ==
X-CSE-MsgGUID: 2MCKyopMSOenySbif9PlYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29020524"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29020524"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:44:51 -0700
X-CSE-ConnectionGUID: TEI0SCc0QwOaAJJtVouqWQ==
X-CSE-MsgGUID: i1kOB4utSNKe5vIesbfTyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30870121"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:44:48 -0700
Date: Mon, 13 May 2024 13:44:14 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZkH9DurNJ/OFDvT/@mev-dev>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
 <ZkHztwMeJFU73WQm@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZkHztwMeJFU73WQm@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715600691; x=1747136691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nK3+LcnXzXyftikuQXDRPxJYaEKa1l+sJltWiV5/bCM=;
 b=V269bNYO6oEOaPreU18tKWtEX7zXQRWaQMjxIxVUbvPfZHPoEQb3nG8a
 XF8ae/bvjci6W+u/Z+R1GwBU2WrTRyTc6Gx8HYb1qodgktIxD6IrT9kjt
 VH1rsZqRKlRpJiDDSjZ1f3SIXTxKyLnvXZqLBwWoj9nb6XlN/73TuAcT7
 R0FkL+7+4FAEFnX0tERcZgiB7kI5WIzfDkDbIHbj/OmTrLdmni2/1k310
 Wt9Q4TkP/AvSUXKsrXwT+74PvwqkKKpsljmUqK5sPgwehAmENQjrQ/0a2
 OBwTwD+TspXXcM6KPlRQey2ohiUTWmSs9Bv1VFVLS1v4m8RCVbMZRpsqW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V269bNYO
Subject: Re: [Intel-wired-lan] [iwl-next v2 03/15] ice: add basic devlink
 subfunctions support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 13, 2024 at 01:04:23PM +0200, Jiri Pirko wrote:
> Mon, May 13, 2024 at 10:37:23AM CEST, michal.swiatkowski@linux.intel.com wrote:
> 
> [...]
> 
> 
> 
> >+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
> >+{
> >+	struct devlink_port_attrs attrs = {};
> >+	struct devlink_port *devlink_port;
> >+	struct devlink *devlink;
> >+	struct ice_vsi *vsi;
> >+	struct device *dev;
> >+	struct ice_pf *pf;
> >+	int err;
> >+
> >+	vsi = dyn_port->vsi;
> >+	pf = dyn_port->pf;
> >+	dev = ice_pf_to_dev(pf);
> >+
> >+	devlink_port = &dyn_port->devlink_port;
> >+
> >+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_SF;
> >+	attrs.pci_sf.pf = pf->hw.bus.func;
> >+	attrs.pci_sf.sf = dyn_port->sfnum;
> >+
> >+	devlink_port_attrs_set(devlink_port, &attrs);
> >+	devlink = priv_to_devlink(pf);
> >+
> >+	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
> >+					  &ice_devlink_port_sf_ops);
> >+	if (err) {
> >+		dev_err(dev, "Failed to create devlink port for Subfunction %d",
> >+			vsi->idx);
> 
> Either use extack or avoid this error message entirely. Could you please
> double you don't write dmesg error messages in case you have extack
> available in the rest of this patchset?
> 
> 

Sure, I can avoid, as this is called from port representor creeation
function. I don't want to pass extack there (code is generic for VF and
SF, and VF call doesn't have extack).

We have this pattern in few place in code (using dev_err even extack can
be passed). Is it recommended to pass extact to all functions
which probably want to write some message in case of error (assuming the
call context has the extack)? 

> >+		return err;
> >+	}
> >+
> >+	return 0;
> >+}
> >+
> 
> [...]
