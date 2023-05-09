Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B676FC9E1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 17:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A55940F4E;
	Tue,  9 May 2023 15:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A55940F4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683644913;
	bh=ab2VZCfigYm+cmfAIKd3mV0DM1PYjPyvbgbRV+P/oHA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wvqVyMR7cGr/7KuRcRRBTnzFjRVoRh7IBRHeRVEVB5aMdxTfh9y+iv/WPAqt2+WS2
	 kJUmcf2Slmqosk2ZFv1KjC/7kVxTpC9aW2z4uk88dFF1mKQ6wWHXVivSYMVTUBolBm
	 zfir+LTlIBLcCOzSkz0+zuK6WojNfy2qfvjqWlH4/1nr1Q1s6SdBLY7bpzUhY56YBd
	 UMW6zCX/mI7qHtkkpuE0bgCC4gm87gRGelS86c0PqfyhvyPqZUtQPM+0EUahzGfZPm
	 rwEdTMGReg22AK7E+G4LVeI9IBkMJd2qTXSpTpJHlrET1pLxkMG48kUGLTFqX/f5Ul
	 q8JHUJNFPgwYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2HjhhCZ93Xw; Tue,  9 May 2023 15:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A31F410BA;
	Tue,  9 May 2023 15:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A31F410BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFA381BF869
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 04:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C828F84462
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 04:46:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C828F84462
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8eAheqcJVFaA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 04:46:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 963FA8445F
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 963FA8445F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 04:46:15 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-64115e652eeso39740298b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 May 2023 21:46:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683607575; x=1686199575;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FS+SrlPswE4eD+uqPBjYmKG/qWI7CqlW44O7ac6sfQw=;
 b=jS/Vgyhs4OvGHtES7CQn6HTJ7TrcEo5nxvIbB1HOts558yzS0CHFdAFqWy5T2Y7yOY
 LT5XRBwVXGZupITfoADbTIca8ByDOjZdQ//uUFEQSUgyNVpSxVXYyNLnm8W00eQQNVQI
 PfIHxYl9FMBAp6VB2nkAnlEcyuvir/xEvYCY+/8d477RjL9q8f8VfhtLJL6nY8V005ux
 Gt25JELwjT8hOnDDwImQkxsG4Z1GZEM2IxUOcvEv2ZrQnNB8xNBRGqt5SDkbQc/teOK7
 fyHijPJ+granJIUW2TpIgRsbVSHPP49ndgM6mxBluqY0ziQ5LDDjiqW664ab/2nB0ijo
 pP1A==
X-Gm-Message-State: AC+VfDxQtoJHc1w2rhC5EdftskhTAJEYC2F1PC1WRh1NcJHHY3x0Spid
 mDg1iOHac2bDxHGJS1W77hY=
X-Google-Smtp-Source: ACHHUZ4NIdDCu3bFcAsii8fJUKI9h0WIH0WIawuxsax4YXaZZNlptGilxn0XFUas/f325ghGRGa2Mw==
X-Received: by 2002:a17:902:e751:b0:1a9:a408:a52f with SMTP id
 p17-20020a170902e75100b001a9a408a52fmr20321289plf.24.1683607574777; 
 Mon, 08 May 2023 21:46:14 -0700 (PDT)
Received: from debian.me (subs03-180-214-233-91.three.co.id. [180.214.233.91])
 by smtp.gmail.com with ESMTPSA id
 iy3-20020a170903130300b001ab1cdb4295sm384636plb.130.2023.05.08.21.46.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 May 2023 21:46:14 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
 id C5C1D1068D5; Tue,  9 May 2023 11:46:09 +0700 (WIB)
Date: Tue, 9 May 2023 11:46:09 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <ZFnQEXCm0upQ1LSo@debian.me>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230508194326.482-16-emil.s.tantilov@intel.com>
MIME-Version: 1.0
In-Reply-To: <20230508194326.482-16-emil.s.tantilov@intel.com>
X-Mailman-Approved-At: Tue, 09 May 2023 15:08:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683607575; x=1686199575;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FS+SrlPswE4eD+uqPBjYmKG/qWI7CqlW44O7ac6sfQw=;
 b=jqCfQVQamQEid34WI5mvpzB6I59Gz5y00SZqQYzHgqwUgkW/HUo+i2Ja5H3vGeNkQx
 4HjsHHLFEmkS7a0bdvev+JlCBnqWdfXvQNMuR5mN66SzG0rhC3u8f7XvDoEdL9MGwMWX
 TnogcfHk4P/zNt89ZHn6NSSoM8Te8jnmyIFlguKpt8BjcfJutf9VlvhOc6oQL6JbCzoZ
 Hb20Wnf2MS3suyE9m6YhC3N8AbC3AFH6nTdTh2Jp2HzbJ4V7jnyNHI/kMq0zoA/QjnfU
 DKEJNcQL7NYuLUadf8tfAOh/h054J585T4SCmEGnXpFWDDZ6JLoVZk1O8Kxys152Yes4
 WL/A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=jqCfQVQa
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 15/15] idpf: configure
 SRIOV and add other ndo_ops
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org, corbet@lwn.net,
 simon.horman@corigine.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: multipart/mixed; boundary="===============2363629602696330763=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============2363629602696330763==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XB1CMNuCitGT0anZ"
Content-Disposition: inline


--XB1CMNuCitGT0anZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 08, 2023 at 12:43:26PM -0700, Emil Tantilov wrote:
> From: Joshua Hay <joshua.a.hay@intel.com>
>=20
> Add PCI callback to configure SRIOV and add the necessary support
> to initialize the requested number of VFs by sending the virtchnl
> message to the device Control Plane.
>=20
> Add other ndo ops supported by the driver such as features_check,
> set_rx_mode, validate_addr, set_mac_address, change_mtu, get_stats64,
> set_features, and tx_timeout. Initialize the statistics task which
>  requests the queue related statistics to the CP. Add loopback
> and promiscuous mode support and the respective virtchnl messages.
>=20
> Finally, add documentation and build support for the driver.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  .../device_drivers/ethernet/intel/idpf.rst    | 162 +++++
>  drivers/net/ethernet/intel/Kconfig            |  10 +
>  drivers/net/ethernet/intel/Makefile           |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |  40 ++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 642 +++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  17 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  26 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   2 +
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 193 ++++++

You forget to add toctree entry for the doc:

---- >8 ----
diff --git a/Documentation/networking/device_drivers/ethernet/index.rst b/D=
ocumentation/networking/device_drivers/ethernet/index.rst
index 417ca514a4d057..5a7e377ae2b7f5 100644
--- a/Documentation/networking/device_drivers/ethernet/index.rst
+++ b/Documentation/networking/device_drivers/ethernet/index.rst
@@ -30,6 +30,7 @@ Contents:
    intel/e1000
    intel/e1000e
    intel/fm10k
+   intel/idpf
    intel/igb
    intel/igbvf
    intel/ixgbe

> +Contents
> +=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +- Overview
> +- Identifying Your Adapter
> +- Additional Features & Configurations
> +- Performance Optimization

Automatically generate table of contents instead:

---- >8 ----
diff --git a/Documentation/networking/device_drivers/ethernet/intel/idpf.rs=
t b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
index ae5e6430d0e636..6f7c8e15fa20df 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
@@ -7,14 +7,7 @@ idpf Linux* Base Driver for the Intel(R) Infrastructure Da=
ta Path Function
 Intel idpf Linux driver.
 Copyright(C) 2023 Intel Corporation.
=20
-Contents
-=3D=3D=3D=3D=3D=3D=3D=3D
-
-- Overview
-- Identifying Your Adapter
-- Additional Features & Configurations
-- Performance Optimization
-
+.. contents::
=20
 The idpf driver serves as both the Physical Function (PF) and Virtual Func=
tion
 (VF) driver for the Intel(R) Infrastructure Data Path Function.

> +Identifying Your Adapter
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +For information on how to identify your adapter, and for the latest Intel
> +network drivers, refer to the Intel Support website:
> +http://www.intel.com/support

What support article(s) do you mean on identifying the adapter?

> +
> +
> +Additional Features and Configurations
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +ethtool
> +-------
> +The driver utilizes the ethtool interface for driver configuration and
> +diagnostics, as well as displaying statistical information. The latest e=
thtool
> +version is required for this functionality. Download it at:
> +https://kernel.org/pub/software/network/ethtool/

"... If you don't have one yet, you can obtain it at ..."

> +
> +
> +Viewing Link Messages
> +---------------------
> +Link messages will not be displayed to the console if the distribution is
> +restricting system messages. In order to see network driver link message=
s on
> +your console, set dmesg to eight by entering the following:
> +
> +# dmesg -n 8
> +
> +NOTE: This setting is not saved across reboots.

How can I permanently save above dmesg setting?

> +
> +
> +Jumbo Frames
> +------------
> +Jumbo Frames support is enabled by changing the Maximum Transmission Uni=
t (MTU)
> +to a value larger than the default value of 1500.
> +
> +Use the ip command to increase the MTU size. For example, enter the foll=
owing
> +where <ethX> is the interface number:
> +
> +# ip link set mtu 9000 dev <ethX>
> +# ip link set up dev <ethX>

For command line snippets, use literal code blocks:

---- >8 ----
diff --git a/Documentation/networking/device_drivers/ethernet/intel/idpf.rs=
t b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
index 0a2982fb6f0045..30148d8cf34b14 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
@@ -48,9 +48,9 @@ Viewing Link Messages
 ---------------------
 Link messages will not be displayed to the console if the distribution is
 restricting system messages. In order to see network driver link messages =
on
-your console, set dmesg to eight by entering the following:
+your console, set dmesg to eight by entering the following::
=20
-# dmesg -n 8
+    # dmesg -n 8
=20
 NOTE: This setting is not saved across reboots.
=20
@@ -61,10 +61,10 @@ Jumbo Frames support is enabled by changing the Maximum=
 Transmission Unit (MTU)
 to a value larger than the default value of 1500.
=20
 Use the ip command to increase the MTU size. For example, enter the follow=
ing
-where <ethX> is the interface number:
+where <ethX> is the interface number::
=20
-# ip link set mtu 9000 dev <ethX>
-# ip link set up dev <ethX>
+    # ip link set mtu 9000 dev <ethX>
+    # ip link set up dev <ethX>
=20
 NOTE: The maximum MTU setting for jumbo frames is 9706. This corresponds t=
o the
 maximum jumbo frame size of 9728 bytes.
@@ -92,40 +92,40 @@ is tuned for general workloads. The user can customize =
the interrupt rate
 control for specific workloads, via ethtool, adjusting the number of
 microseconds between interrupts.
=20
-To set the interrupt rate manually, you must disable adaptive mode:
+To set the interrupt rate manually, you must disable adaptive mode::
=20
-# ethtool -C <ethX> adaptive-rx off adaptive-tx off
+    # ethtool -C <ethX> adaptive-rx off adaptive-tx off
=20
 For lower CPU utilization:
  - Disable adaptive ITR and lower Rx and Tx interrupts. The examples below
    affect every queue of the specified interface.
=20
  - Setting rx-usecs and tx-usecs to 80 will limit interrupts to about
-   12,500 interrupts per second per queue:
+   12,500 interrupts per second per queue::
=20
-   # ethtool -C <ethX> adaptive-rx off adaptive-tx off rx-usecs 80
-   tx-usecs 80
+       # ethtool -C <ethX> adaptive-rx off adaptive-tx off rx-usecs 80
+       tx-usecs 80
=20
 For reduced latency:
  - Disable adaptive ITR and ITR by setting rx-usecs and tx-usecs to 0
-   using ethtool:
+   using ethtool::
=20
-   # ethtool -C <ethX> adaptive-rx off adaptive-tx off rx-usecs 0
-   tx-usecs 0
+       # ethtool -C <ethX> adaptive-rx off adaptive-tx off rx-usecs 0
+       tx-usecs 0
=20
 Per-queue interrupt rate settings:
  - The following examples are for queues 1 and 3, but you can adjust other
    queues.
=20
  - To disable Rx adaptive ITR and set static Rx ITR to 10 microseconds or
-   about 100,000 interrupts/second, for queues 1 and 3:
+   about 100,000 interrupts/second, for queues 1 and 3::
=20
-   # ethtool --per-queue <ethX> queue_mask 0xa --coalesce adaptive-rx off
-   rx-usecs 10
+       # ethtool --per-queue <ethX> queue_mask 0xa --coalesce adaptive-rx =
off
+       rx-usecs 10
=20
- - To show the current coalesce settings for queues 1 and 3:
+ - To show the current coalesce settings for queues 1 and 3::
=20
-   # ethtool --per-queue <ethX> queue_mask 0xa --show-coalesce
+       # ethtool --per-queue <ethX> queue_mask 0xa --show-coalesce
=20
=20
=20
@@ -139,9 +139,9 @@ helpful to optimize performance in VMs.
    device's local_cpulist: /sys/class/net/<ethX>/device/local_cpulist.
=20
  - Configure as many Rx/Tx queues in the VM as available. (See the idpf dr=
iver
-   documentation for the number of queues supported.) For example:
+   documentation for the number of queues supported.) For example::
=20
-   # ethtool -L <virt_interface> rx <max> tx <max>
+       # ethtool -L <virt_interface> rx <max> tx <max>
=20
=20
 Support

> +
> +NOTE: The maximum MTU setting for jumbo frames is 9706. This corresponds=
 to the
> +maximum jumbo frame size of 9728 bytes.
> +
> +NOTE: This driver will attempt to use multiple page sized buffers to rec=
eive
> +each jumbo packet. This should help to avoid buffer starvation issues wh=
en
> +allocating receive packets.
> +
> +NOTE: Packet loss may have a greater impact on throughput when you use j=
umbo
> +frames. If you observe a drop in performance after enabling jumbo frames,
> +enabling flow control may mitigate the issue.

Sphinx has admonition directive facility to style above notes:

---- >8 ----
diff --git a/Documentation/networking/device_drivers/ethernet/intel/idpf.rs=
t b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
index 30148d8cf34b14..ae5e6430d0e636 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
@@ -52,7 +52,8 @@ your console, set dmesg to eight by entering the followin=
g::
=20
     # dmesg -n 8
=20
-NOTE: This setting is not saved across reboots.
+.. note::
+   This setting is not saved across reboots.
=20
=20
 Jumbo Frames
@@ -66,16 +67,19 @@ where <ethX> is the interface number::
     # ip link set mtu 9000 dev <ethX>
     # ip link set up dev <ethX>
=20
-NOTE: The maximum MTU setting for jumbo frames is 9706. This corresponds t=
o the
-maximum jumbo frame size of 9728 bytes.
+.. note::
+   The maximum MTU setting for jumbo frames is 9706. This corresponds to t=
he
+   maximum jumbo frame size of 9728 bytes.
=20
-NOTE: This driver will attempt to use multiple page sized buffers to recei=
ve
-each jumbo packet. This should help to avoid buffer starvation issues when
-allocating receive packets.
+.. note::
+   This driver will attempt to use multiple page sized buffers to receive
+   each jumbo packet. This should help to avoid buffer starvation issues w=
hen
+   allocating receive packets.
=20
-NOTE: Packet loss may have a greater impact on throughput when you use jum=
bo
-frames. If you observe a drop in performance after enabling jumbo frames,
-enabling flow control may mitigate the issue.
+.. note::
+   Packet loss may have a greater impact on throughput when you use jumbo
+   frames. If you observe a drop in performance after enabling jumbo frame=
s,
+   enabling flow control may mitigate the issue.
=20
=20
 Performance Optimization


Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--XB1CMNuCitGT0anZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZFnQCgAKCRD2uYlJVVFO
o0eoAQCwcoPTSGgmJhLW0P24FRnk4ErnBTTj0tID9AHLUb/NRgD/Y4yHw1UgO9xe
TWkZ258kY2iGsCapKd9PuKqMj/asjwA=
=PHLZ
-----END PGP SIGNATURE-----

--XB1CMNuCitGT0anZ--

--===============2363629602696330763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2363629602696330763==--
