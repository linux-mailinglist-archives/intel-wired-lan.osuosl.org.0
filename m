Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26D070009B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 08:34:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 332CF4057C;
	Fri, 12 May 2023 06:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 332CF4057C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683873270;
	bh=uryyevP2yeGx39PuqoHSAGF4v+F/TJhjamIBAdIHaBI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FSECqF/aCX0MqciXFoJ7jYBak5sYxhkOlR3eAxABfC1tz04y1S0poo08ZG7S2pbq5
	 GAVbTs296tmH1WAdlHvOrUTYYQdQOE3inxniCZiFdwi35sD8Luy6DvuG38kdSFN/h9
	 s8gqjo7eSGfnbMeUTrVNMN5iNgSMEcLGE75wkksv5sLacRXFfnZbef+7qkSqCuOBhz
	 fYoF0cevQMhCIwX8DzPk77QRfZavoTw6LEOCslEVt7543xmtBQ3osKxi/xJ4EsyXtK
	 cfs3SX1UFE2RVsvegXgzaiCGEfLkJtk4czfEfYakdNxUSqfCtyvh7lLag03Wj8m2lC
	 qA63mGCz2GULQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9HbDCjsTC8u; Fri, 12 May 2023 06:34:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 429AD40124;
	Fri, 12 May 2023 06:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 429AD40124
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD7111BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 06:34:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CF3F42B33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 06:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CF3F42B33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9CWZJ_nQLiF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 06:34:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BE8841892
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BE8841892
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 06:34:20 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-592-T3JPUpjTPpeY4NZMacE8qQ-1; Fri, 12 May 2023 02:34:16 -0400
X-MC-Unique: T3JPUpjTPpeY4NZMacE8qQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-30620ebd3c2so5813017f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 23:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683873255; x=1686465255;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zjxPhTwlJ0gSAXm/xYej7tUn+zGKaRSBTdt9lwnPXWw=;
 b=fWqDhF1sM6AlMxRYPLpSiqXq8AKTxSiWnssMnDp80SR8XzfS2oqX8awtJiwXPF/LSo
 J9MBXg79dZENBk5203ijg7hKabPkPGw+jGuK5do6bo15kupy1xFK9mKbRYrFNSx9Xo55
 2PdTTc9aSblenDy8E91MED8+xr0RB2+bditX/ToUtt1M7FozfXsJh+tm/O+f/Zsq0CBL
 FtZayEnFgUL4BlZQWpkj4/bTFRedV/UuVHTWoPXeM7ajWBXOxZ6g+htyQzcR38I37VsE
 CVl/w6SPNfjPG3iUCa8u6h1lwAwSDenJoFT9yzQ5una5wEaE3m9NPt8XDp8v0cpMOXhA
 74PQ==
X-Gm-Message-State: AC+VfDxcH5XfcBSf7E9dbL8syd3dkKhhU3prZFPOKotpbWk/eqY/qcA1
 gwK1oK+KJlYg8nWMMbqOpaiCMFhhp9i0qNtoIUUl0glCzO4Hubf/t5FajKD7vVctUIsuVhDvbN9
 t73MQ3Tb+8fwdewStJU7soNBzZQ7E9g==
X-Received: by 2002:a5d:6ac4:0:b0:306:2ef0:d223 with SMTP id
 u4-20020a5d6ac4000000b003062ef0d223mr18330077wrw.62.1683873255628; 
 Thu, 11 May 2023 23:34:15 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5BOyfXBP8O2EKoKQZs6mbBtDkOi5Ez8iWB4eaUmIbC+BWbYmeJxtRn8zI5VOSsuAU7Aal4Pw==
X-Received: by 2002:a5d:6ac4:0:b0:306:2ef0:d223 with SMTP id
 u4-20020a5d6ac4000000b003062ef0d223mr18330056wrw.62.1683873255281; 
 Thu, 11 May 2023 23:34:15 -0700 (PDT)
Received: from redhat.com ([31.187.78.61]) by smtp.gmail.com with ESMTPSA id
 w12-20020a05600c474c00b003f07ef4e3e0sm15048300wmo.0.2023.05.11.23.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 May 2023 23:34:14 -0700 (PDT)
Date: Fri, 12 May 2023 02:34:09 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20230512023234-mutt-send-email-mst@kernel.org>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
In-Reply-To: <20230508194326.482-1-emil.s.tantilov@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1683873258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zjxPhTwlJ0gSAXm/xYej7tUn+zGKaRSBTdt9lwnPXWw=;
 b=bOkwOxXoZr4tPV8RTVYsMI8ttigtOqWgn8b+FpyXTxlGVs0hOBWg3hdV2AU2weu7ppeJhp
 o1WfGWxAoowQN5WV9s38jhDdEQB7HgghnIdG8inTrxspmhx1wC/WdJSyhA8DDZ/NOn1Dcb
 GTx0vxdU/TCtR+IcO3QFivst5wo8oIg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bOkwOxXo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 08, 2023 at 12:43:11PM -0700, Emil Tantilov wrote:
> This patch series introduces the Intel Infrastructure Data Path Function
> (IDPF) driver. It is used for both physical and virtual functions. Except
> for some of the device operations the rest of the functionality is the
> same for both PF and VF. IDPF uses virtchnl version2 opcodes and
> structures defined in the virtchnl2 header file which helps the driver
> to learn the capabilities and register offsets from the device
> Control Plane (CP) instead of assuming the default values.

So, is this for merge in the next cycle?  Should this be an RFC rather?
It seems unlikely that the IDPF specification will be finalized by that
time - how are you going to handle any specification changes?


> The format of the series follows the driver init flow to interface open.
> To start with, probe gets called and kicks off the driver initialization
> by spawning the 'vc_event_task' work queue which in turn calls the
> 'hard reset' function. As part of that, the mailbox is initialized which
> is used to send/receive the virtchnl messages to/from the CP. Once that is
> done, 'core init' kicks in which requests all the required global resources
> from the CP and spawns the 'init_task' work queue to create the vports.
> 
> Based on the capability information received, the driver creates the said
> number of vports (one or many) where each vport is associated to a netdev.
> Also, each vport has its own resources such as queues, vectors etc.
> >From there, rest of the netdev_ops and data path are added.
> 
> IDPF implements both single queue which is traditional queueing model
> as well as split queue model. In split queue model, it uses separate queue
> for both completion descriptors and buffers which helps to implement
> out-of-order completions. It also helps to implement asymmetric queues,
> for example multiple RX completion queues can be processed by a single
> RX buffer queue and multiple TX buffer queues can be processed by a
> single TX completion queue. In single queue model, same queue is used
> for both descriptor completions as well as buffer completions. It also
> supports features such as generic checksum offload, generic receive
> offload (hardware GRO) etc.
> 
> v3 --> v4: link [3]
>  (patch 1):
>  * cleanups in virtchnl2 including redundant error codes, naming and
>    whitespace
>  (patch 3):
>  * removed "__" prefix from names of adapter and vport flags, converted
>    comments to kernel-doc style
>  * renamed error code variable names in controlq to be more consistent
>    with rest of the code
>  * removed Control Plane specific opcodes and changed "peer" type comments
>    to CP
>  * replaced managed dma calls with their non-managed equivalent
>  (patch 4):
>  * added additional info to some error messages on init to aid in debug
>  * removed unnecessary zero-init before loop and zeroing memcpy after
>    kzalloc()
>  * corrected wording of comment in idpf_wait_for_event() s/wake up/woken/
>  * replaced managed dma calls with their non-managed equivalent
> 
> [3] https://lore.kernel.org/netdev/20230427020917.12029-1-emil.s.tantilov@intel.com/
> 
> v2 --> v3: link [2]
>  * converted virtchnl2 defines to enums
>  * fixed comment style in virtchnl2 to follow kernel-doc format
>  * removed empty lines between end of structs and size check macro
>    checkpatch will mark these instances as CHECK
>  * cleaned up unused Rx descriptor structs and related bits in virtchnl2
>  * converted Rx descriptor bit offsets into bitmasks to better align with
>    the use of GENMASK and FIELD_GET
>  * added device ids to pci_tbl from the start
>  * consolidated common probe and remove functions into idpf_probe() and
>    idpf_remove() respectively
>  * removed needless adapter NULL checks
>  * removed devm_kzalloc() in favor of kzalloc(), including kfree in
>    error and exit code path
>  * replaced instances of kcalloc() calls where either size parameter was
>    1 with kzalloc(), reported by smatch
>  * used kmemdup() in some instances reported by coccicheck
>  * added explicit error code and comment explaining the condition for
>    the exit to address warning by smatch
>  * moved build support to the last patch
> 
> [2] https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/
> 
> v1 --> v2: link [1]
>  * removed the OASIS reference in the commit message to make it clear
>    that this is an Intel vendor specific driver
>  * fixed misspells
>  * used comment starter "/**" for struct and definition headers in
>    virtchnl header files
>  * removed AVF reference
>  * renamed APF reference to IDPF
>  * added a comment to explain the reason for 'no flex field' at the end of
>    virtchnl2_get_ptype_info struct
>  * removed 'key[1]' in virtchnl2_rss_key struct as it is not used
>  * set VIRTCHNL2_RXDID_2_FLEX_SQ_NIC to VIRTCHNL2_RXDID_2_FLEX_SPLITQ
>    instead of assigning the same value
>  * cleanup unnecessary NULL assignment to the rx_buf skb pointer since
>    it is not used in splitq model
>  * added comments to clarify the generation bit usage in splitq model
>  * introduced 'reuse_bias' in the page_info structure and make use of it
>    in the hot path
>  * fixed RCT format in idpf_rx_construct_skb
>  * report SPEED_UNKNOWN and DUPLEX_UNKNOWN when the link is down
>  * fixed -Wframe-larger-than warning reported by lkp bot in
>    idpf_vport_queue_ids_init
>  * updated the documentation in idpf.rst to fix LKP bot warning
> 
> [1] https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/
> 
> Alan Brady (4):
>   idpf: configure resources for TX queues
>   idpf: configure resources for RX queues
>   idpf: add RX splitq napi poll support
>   idpf: add ethtool callbacks
> 
> Joshua Hay (5):
>   idpf: add controlq init and reset checks
>   idpf: add splitq start_xmit
>   idpf: add TX splitq napi poll support
>   idpf: add singleq start_xmit and napi poll
>   idpf: configure SRIOV and add other ndo_ops
> 
> Pavan Kumar Linga (5):
>   virtchnl: add virtchnl version 2 ops
>   idpf: add core init and interrupt request
>   idpf: add create vport and netdev configuration
>   idpf: continue expanding init task
>   idpf: initialize interrupts and enable vport
> 
> Phani Burra (1):
>   idpf: add module register and probe functionality
> 
>  .../device_drivers/ethernet/intel/idpf.rst    |  162 +
>  drivers/net/ethernet/intel/Kconfig            |   10 +
>  drivers/net/ethernet/intel/Makefile           |    1 +
>  drivers/net/ethernet/intel/idpf/Makefile      |   18 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |  752 +++
>  .../net/ethernet/intel/idpf/idpf_controlq.c   |  641 +++
>  .../net/ethernet/intel/idpf/idpf_controlq.h   |  131 +
>  .../ethernet/intel/idpf/idpf_controlq_api.h   |  169 +
>  .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  165 +
>  drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1330 +++++
>  .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
>  .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 +
>  .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2349 ++++++++
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  266 +
>  drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1251 +++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4855 +++++++++++++++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  854 +++
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  164 +
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3820 +++++++++++++
>  drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1301 +++++
>  .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  448 ++
>  25 files changed, 19437 insertions(+)
>  create mode 100644 Documentation/networking/device_drivers/ethernet/intel/idpf.rst
>  create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ethtool.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> 
> -- 
> 2.17.2
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
