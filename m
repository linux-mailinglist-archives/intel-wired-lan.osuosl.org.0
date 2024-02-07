Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A5F84C9EE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 12:50:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B3084085B;
	Wed,  7 Feb 2024 11:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHxBRnpUPx9T; Wed,  7 Feb 2024 11:50:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2B5140547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707306654;
	bh=WNL2nbRFM4wfC4b6poUu5Lc9LxoAQ0JTHhgpIJuQ9IM=;
	h=From:Date:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k0wyJcesMQyXQSzagI5sVJYe9PmZCb5GIaYBjQIKSp6GnMkEln+zBebwrozSxTj23
	 ON+p+ttKVBB/9L99wlV97KUeiNaZFUpmBFX4/4uDNZyzJiUTZYM6IcpwGLqhBkdX2+
	 Q4tRe26vLxmkJli3FERAClBUjj5Cw29FPptmQvFJp1rD9n53A1g5XSl5aN9gOT1wbV
	 fZgY6QFo0fBOiZwrYsNnRCUFHn6y8SoA/OBA8Tpi5Se2EJrWsw0kEWu++ZJLLXFJZy
	 XzYC6P8Ogn2sQjOfUMdrTqQ2I72VR6G6MAOtNs5/0ygz9SxVnKILGRgI46qKjfNJC7
	 Ta3G27GQLBotw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2B5140547;
	Wed,  7 Feb 2024 11:50:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 697481BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 11:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53F21404D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 11:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9i5yWx0SF46 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 11:50:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=ilpo.jarvinen@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 665DF40547
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 665DF40547
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 665DF40547
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 11:50:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="4837021"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="4837021"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="909976005"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="909976005"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO localhost)
 ([10.246.51.96])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:50:43 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Wed, 7 Feb 2024 13:50:37 +0200 (EET)
To: linux-pci@vger.kernel.org, 
 "Wang, Qingshun" <qingshun.wang@linux.intel.com>
In-Reply-To: <20240206135717.8565-1-ilpo.jarvinen@linux.intel.com>
Message-ID: <d1168e4a-c766-b3c2-bb74-c8dbae984cff@linux.intel.com>
References: <20240206135717.8565-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323328-2015099635-1707302934=:1119"
Content-ID: <ca89eb14-5052-c712-0d3b-dae8e97234e8@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707306651; x=1738842651;
 h=from:date:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=SfvJn+xoupBR1MbkXFoDnA5hLXb3/g/1CcV8cOlXD/A=;
 b=Y6Wu6pnom9XLv6poGlDiUWQsebH+Dk2elTYCJDQzn3C8DC7ZvXyiHmw5
 yobsVvVo8LysAr9PllLlEbmlFK0ipHXwjPHdvOimsaWtILkwFEV1osbHM
 V1YTvfQJLtH4ScELhVy9wRdhogHLfIT6bMONwwjB1QcUPtroN7l5BlcaS
 oLjcflRgYAqzeoophCcahRcxi/DnkSdOvpZqoI/+ZPVPrpjxewKSIv19K
 TTv0IqubjZa9V3orFBAtyE7PJcN1H5MNakjo1sZJr4uVGZwhSLv7AXT5M
 1hV4HZP74SThZU5OWmJSSzYITj3rhvGnarjK8ILnyr30g92TAhrUxWksF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y6Wu6pno
Subject: Re: [Intel-wired-lan] [PATCH 0/4] PCI: Consolidate TLP Log reading
 and printing
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
Cc: Oliver O'Halloran <oohall@gmail.com>, linux-efi@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Tony Luck <tony.luck@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-2015099635-1707302934=:1119
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: QUOTED-PRINTABLE
Content-ID: <5d24dca6-e3dc-f4f5-8d6c-ee0d65616a2f@linux.intel.com>

Adding Cc Quigshun which I ended up forgotting despite thinking it at one=
=20
point.

--=20
 i.

On Tue, 6 Feb 2024, Ilpo J=E4rvinen wrote:

> This series consolidates AER & DPC TLP Log handling code. Helpers are
> added for reading and printing the TLP Log and the format is made to
> include E-E Prefixes in both cases (previously only one DPC RP PIO
> displayed the E-E Prefixes).
>=20
> I'd appreciate if people familiar with ixgbe could check the error
> handling conversion within the driver is correct.
>=20
> Ilpo J=E4rvinen (4):
>   PCI/AER: Cleanup register variable
>   PCI: Generalize TLP Header Log reading
>   PCI: Add TLP Prefix reading into pcie_read_tlp_log()
>   PCI: Create helper to print TLP Header and Prefix Log
>=20
>  drivers/firmware/efi/cper.c                   |  4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 39 +++------
>  drivers/pci/ats.c                             |  2 +-
>  drivers/pci/pci.c                             | 79 +++++++++++++++++++
>  drivers/pci/pci.h                             |  2 +-
>  drivers/pci/pcie/aer.c                        | 28 ++-----
>  drivers/pci/pcie/dpc.c                        | 31 ++++----
>  drivers/pci/probe.c                           | 14 ++--
>  include/linux/aer.h                           | 16 ++--
>  include/linux/pci.h                           |  2 +-
>  include/ras/ras_event.h                       | 10 +--
>  include/uapi/linux/pci_regs.h                 |  2 +
>  12 files changed, 145 insertions(+), 84 deletions(-)
>=20
>=20
--8323328-2015099635-1707302934=:1119--
