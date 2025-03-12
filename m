Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FEFA5DF86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 15:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DAB6408C8;
	Wed, 12 Mar 2025 14:55:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tZdPUgmWQvEx; Wed, 12 Mar 2025 14:55:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A29D406D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741791341;
	bh=0GtfrgMNDxKgKFHQbW0IGu0lIRI6e6+wrzAsNYY8nIw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cSztNazCHRgCMgsSomCNTkoS0yIDnl0IwdnKz7wyFGJ4KpAn0zoCowEE9bA3DBnxH
	 47A7PNWVg2/60XQBkkZ404JTqQWYTKvizAYbZEvog8Odax2u6QAq4qczZ5OV26e3wr
	 WxOsT4zpagujc2v21qpYq/47I4+Ban2XRm4oMkWBJu2vq/5B1PUQ+/x7AC/vUjxXi0
	 Ysb4np1b14QdeJ42wmnx7F7TH9vOlrMoBMxl+vx/rssBNlYqmO45+Bl8vefEGWNOlE
	 GtH8Vuv0pPPkX3MVfMqQG60+59hgLENTmXoaDJm9qd7Jo9YFbn7IA4sTjyuccoXZYD
	 dm/ShGIBBKjhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A29D406D5;
	Wed, 12 Mar 2025 14:55:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED69C943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 14:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCD7A4017A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 14:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DBTaGsmBKOgi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 14:55:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F106140127
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F106140127
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F106140127
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 14:55:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 6636CA428AB;
 Wed, 12 Mar 2025 14:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF44BC4CEDD;
 Wed, 12 Mar 2025 14:55:33 +0000 (UTC)
Date: Wed, 12 Mar 2025 15:55:30 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Bharath R <bharath.r@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Message-ID: <20250312145530.GU4159220@kernel.org>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
 <20250312125843.347191-12-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312125843.347191-12-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741791337;
 bh=ttMGOyKcGN5/IMeqSBa9LzkbTqTyW9zXdt/4cUmR9is=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VUuz9RDzKpjeMsqTIxF2lcL0EUz6sRwHgaAeRazRJhNvzFwSdx4G793MIcCS5Icre
 EjShOgTkyt5qjyH6II+ojwLoHLvTq0hasMslgL/aPb+aNZZcafDGCOXP+mgDI7wYRb
 sYFzUfZZk/eKN3bxCrtscMyKI0+X8VmL2D9q0z19LA7EEMSgaFtojohI07YXF6rg3w
 EW/CKbs00/b9iZKfH4hvloxB1cockssjcydWolgVpr5y/uYWGyZNl0n0Xdztl8zw5d
 ot9jDtjJKroVZkqf2Pdq14bNb7R4mNWKpApcbKqOmUkguI08rw3n4mu8JbSWxW2mUS
 l9V2orF0q5S+w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VUuz9RDz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 11/15] ixgbe: add device
 flash update via devlink
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

On Wed, Mar 12, 2025 at 01:58:39PM +0100, Jedrzej Jagielski wrote:

...

> diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
> index a41073a62776..41aedf4b8017 100644
> --- a/Documentation/networking/devlink/ixgbe.rst
> +++ b/Documentation/networking/devlink/ixgbe.rst
> @@ -64,3 +64,27 @@ The ``ixgbe`` driver reports the following versions
>        - running
>        - 0xee16ced7
>        - The first 4 bytes of the hash of the netlist module contents.
> +
> +Flash Update
> +============
> +The ``ixgbe`` driver implements support for flash update using the
> +``devlink-flash`` interface. It supports updating the device flash using a
> +combined flash image that contains the ``fw.mgmt``, ``fw.undi``, and
> +``fw.netlist`` components.
> +.. list-table:: List of supported overwrite modes
> +   :widths: 5 95

Hi Jedrzej,

make htmldocs flags two warnings, which I believe can be resolved by
adding a blank line here.

  .../ixgbe.rst:75: ERROR: Unexpected indentation.
  .../ixgbe.rst:76: WARNING: Field list ends without a blank line; unexpected unindent.

> +   * - Bits
> +     - Behavior
> +   * - ``DEVLINK_FLASH_OVERWRITE_SETTINGS``
> +     - Do not preserve settings stored in the flash components being
> +       updated. This includes overwriting the port configuration that
> +       determines the number of physical functions the device will
> +       initialize with.
> +   * - ``DEVLINK_FLASH_OVERWRITE_SETTINGS`` and ``DEVLINK_FLASH_OVERWRITE_IDENTIFIERS``
> +     - Do not preserve either settings or identifiers. Overwrite everything
> +       in the flash with the contents from the provided image, without
> +       performing any preservation. This includes overwriting device
> +       identifying fields such as the MAC address, Vital product Data (VPD) area,
> +       and device serial number. It is expected that this combination be used with an
> +       image customized for the specific device.
> +

...
