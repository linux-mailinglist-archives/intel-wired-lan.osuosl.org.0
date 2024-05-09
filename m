Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8608C0EC9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 13:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCCBA60687;
	Thu,  9 May 2024 11:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d9RzTAs06iC5; Thu,  9 May 2024 11:18:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A73DD60651
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715253520;
	bh=QGUNol9Sbp9a9YBp3ezTFys2dRZcWsWLHOVDA4scBjs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lciMIUZFNvsXBJqSqFQpmDSIit35Wof7136sRhL9b5vyqCA91/K2xUe7orkRIoD+B
	 z33NXydcfqtBx/c5qD+Rfv3Vqyr/AGgPHS0igVTRrNaG0U5Zv1l8oaxI90XUaKtjuP
	 P07JV3uVnBbU95zHOW5mIucGLQ6bftjCChA0RoXn5qlgoEBdvVXmeXNid+WIKt6iJ5
	 vMIc1Fg8Lu77fa8Kw0WNeBTjSLksrra913l6S/6e87bZyziSU4oCOymNAKIbqv2zqu
	 4RXARZL4j5IMEUhsmVjyCjfXuO9ufIILctOtidGdmRDDRC+mEKhoj/At7j/MkdFbsD
	 PeDmFg39YdXKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A73DD60651;
	Thu,  9 May 2024 11:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D4121BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1850A40462
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:18:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ux_s_eDbc7QX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 11:18:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::236; helo=mail-lj1-x236.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8B7C7401F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B7C7401F6
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B7C7401F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:18:36 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2e09138a2b1so8333151fa.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 May 2024 04:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715253514; x=1715858314;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QGUNol9Sbp9a9YBp3ezTFys2dRZcWsWLHOVDA4scBjs=;
 b=hKoacuynwNQ3yPVj6Vx1tMf4rWDJMu0ic1hGEhqOXvGIIxcX8bMhIfFHb/NgnYdRaJ
 czcLmXwU04+PwpLOqDyhr+oqDjufSL7jgQ+Um0lvvLZE4Z2V3+R3MLlzc3WWVagmpau7
 7l/fi1dbLHDjSgUGuO99IyueHshgALz/MPomdd5gwqjzizRFBo7Ugp2sS8Pfqjlqb8Er
 QjZXK4fQthyosQ5PJcJvQhYqhsg9S5zG2J0QZ8BCPv/xj69h3Gsaq7iRa3XOdgD855fO
 STu4jSGWCeYGrAFjmRd5s+vzRrseyuaoimIG39jMjdIWtvLeZp5dHGz6skA6KmMxTKE7
 tkGA==
X-Gm-Message-State: AOJu0Yz0CIKoYh/SRr1kNtbJwOPZAxSGF9oieHOj+JdKp5+whEPEuxhh
 mdMMNTuiZL867C8AoF2CCpeZ8X4OigyDDXT+hKY+kbC0QJ1LfipOYe4dh1luC7M=
X-Google-Smtp-Source: AGHT+IGLVOxxL3kZAoAGeYLKAAGLudw62Th0sDUmhinJ2OI+APnW7jbErU8iaxujeGn+RSwWuPZz9Q==
X-Received: by 2002:a2e:90d5:0:b0:2df:c1e7:ab65 with SMTP id
 38308e7fff4ca-2e447698f6dmr34604651fa.26.1715253513606; 
 Thu, 09 May 2024 04:18:33 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-41f87c25459sm57547015e9.18.2024.05.09.04.18.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 May 2024 04:18:33 -0700 (PDT)
Date: Thu, 9 May 2024 13:18:29 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZjyxBcVZNbWioRP0@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715253514; x=1715858314;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QGUNol9Sbp9a9YBp3ezTFys2dRZcWsWLHOVDA4scBjs=;
 b=z5ASXpRz+7zsDNWLONWYLE6/agvhOdWo2XdCDLWsa+odQ+MwmnQI/jXn/ZY+sTrzOs
 sFI6PK9TpRnjEqx+DHwJ6TJQG9ts4dLODosE3QHyZGSLkTJIyqbE8LHNm7PPbHwDInh3
 PGfyNL/8lSXWg1fuN0K3iZaBcF8SteOScT4YlSZly36rHEuxPuh3jW5goYYVN97GVHSe
 h7/1l0xrAzcQ7N9W5OcjVqg0AZglVsy5bNYNK8gliURRjVQ6+QSLN8bESw67a1ucrd0W
 DNDXQMH5C3FaNn0C8BuvEs8MVRWVRWB1awgdIWujdlHPKCzhIiv76HwvRFECP3VeaHEP
 1UCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=z5ASXpRz
Subject: Re: [Intel-wired-lan] [iwl-next v1 00/14] ice: support devlink
 subfunction
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

Tue, May 07, 2024 at 01:45:01PM CEST, michal.swiatkowski@linux.intel.com wrote:
>Hi,
>
>Currently ice driver does not allow creating more than one networking
>device per physical function. The only way to have more hardware backed
>netdev is to use SR-IOV.
>
>Following patchset adds support for devlink port API. For each new
>pcisf type port, driver allocates new VSI, configures all resources
>needed, including dynamically MSIX vectors, program rules and registers
>new netdev.
>
>This series supports only one Tx/Rx queue pair per subfunction.
>
>Example commands:
>devlink port add pci/0000:31:00.1 flavour pcisf pfnum 1 sfnum 1000
>devlink port function set pci/0000:31:00.1/1 hw_addr 00:00:00:00:03:14
>devlink port function set pci/0000:31:00.1/1 state active
>devlink port function del pci/0000:31:00.1/1
>
>Make the port representor and eswitch code generic to support
>subfunction representor type.
>
>VSI configuration is slightly different between VF and SF. It needs to
>be reflected in the code.
>
>Most recent previous patchset (not containing port representor for SF
>support). [1]
>
>[1] https://lore.kernel.org/netdev/20240417142028.2171-1-michal.swiatkowski@linux.intel.com/
>


I don't understand howcome the patchset is v1, yet there are patches
that came through multiple iterations alread. Changelog is missing
completely :/


>Michal Swiatkowski (7):
>  ice: treat subfunction VSI the same as PF VSI
>  ice: create port representor for SF
>  ice: don't set target VSI for subfunction
>  ice: check if SF is ready in ethtool ops
>  ice: netdevice ops for SF representor
>  ice: support subfunction devlink Tx topology
>  ice: basic support for VLAN in subfunctions
>
>Piotr Raczynski (7):
>  ice: add new VSI type for subfunctions
>  ice: export ice ndo_ops functions
>  ice: add basic devlink subfunctions support
>  ice: allocate devlink for subfunction
>  ice: base subfunction aux driver
>  ice: implement netdev for subfunction
>  ice: allow to activate and deactivate subfunction
>
> drivers/net/ethernet/intel/ice/Makefile       |   2 +
> .../net/ethernet/intel/ice/devlink/devlink.c  |  48 ++
> .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
> .../ethernet/intel/ice/devlink/devlink_port.c | 516 ++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |  43 ++
> drivers/net/ethernet/intel/ice/ice.h          |  19 +-
> drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
> drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 ++-
> drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
> drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
> drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
> drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
> drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++++--
> drivers/net/ethernet/intel/ice/ice_repr.h     |  22 +-
> drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 329 +++++++++++
> drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
> .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  |  21 +
> .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  |  13 +
> drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   4 +
> drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
> 26 files changed, 1362 insertions(+), 138 deletions(-)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h
>
>-- 
>2.42.0
>
>
