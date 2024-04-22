Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E60998ACF4E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 16:26:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 811AB4069A;
	Mon, 22 Apr 2024 14:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H0ZNi4iczhfa; Mon, 22 Apr 2024 14:26:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77A354072A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713795969;
	bh=dIINu9KyBDBX/cBbMG71Op3zuuN85u67R5eLl+Z8CAA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4VkfobNcribx4UNbfCoj1RlQa5Zj/ZtbCllUxyyfkW8ozMgNB7kgNtgsMsEsajGFb
	 olYYoKCG6AQJLR0o6wDMnXhOdKFl5cH7i/anjLaarbA4wNCdn+7hUVFX7BUVX5HPo+
	 I05pe1vTgNOByJ7dhgiMRAE/uyGWF4pOE9bg2tUE3aJQYK1XWdcO9M98K8W0BWN1vH
	 GzNmI2nn28hXVkVCfrh1YnaiI5glhmSf0iGzZL/DWeMvAHoc9RtoNDuazgkcck67EC
	 ofqsJ1Rwj25Un5/iEL7n4XZu3jYCRaN7opJ23YhfDnMeIoRtAr23EWrTvCuo519CMe
	 hg8ZqEkxrszDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77A354072A;
	Mon, 22 Apr 2024 14:26:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB78E1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 14:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C33C9608A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 14:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pEeoT4AKTk91 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 14:26:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::534; helo=mail-ed1-x534.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4B129608A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B129608A2
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B129608A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 14:26:00 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-56e1baf0380so5310540a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 07:26:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713795958; x=1714400758;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dIINu9KyBDBX/cBbMG71Op3zuuN85u67R5eLl+Z8CAA=;
 b=GK3kXq6fiz5DaMAFCr0VzrlHVfc5JJz8dcOc9xxqn6i8Xw0BZDF5d5/nSSWVbyxgCd
 LHjxkR4+5cMTcwptZWyLAQtrhJtfSBY3p1L0bAF60eRFuT7GDy8PLneY68suIdL8+NDp
 X4mwVtlBWWLxzk/OCbfATDwBcLR1u9EszJevXHzkT09bfBpg4zSaIGJFzMfcocxokKj0
 rDf4tf5bBHHjWAOd1bsrXT0+mG4XS9skeXnKRrw3GsjWXs86KOAODgaE+aiqiBYv6PZN
 W5I9S61ZmW5y8TE3qa7tssBIZo0boCEA7Py1KlK3dVmqcOrBLsMhA/z4e2INyv4H41eh
 u1yQ==
X-Gm-Message-State: AOJu0Yw2SrxfgLwsBXPQEK/8xa0eRrnnBmAatmdl2NS8CFT/T7vjNzWh
 Gyha2d1d4YRePmwWxZuatbHx8IvYxScLNVunBeJJVf0QFE4cy5KPdhOnsfl+Ph0=
X-Google-Smtp-Source: AGHT+IFh1b4YvcxkXn79fjVZAVGT+9/f6mdpQVJpiEwFbDvIxWmfO30Zx7tHQFeDivtwsDwo7il/6g==
X-Received: by 2002:a17:906:f1d6:b0:a55:5c04:89a4 with SMTP id
 gx22-20020a170906f1d600b00a555c0489a4mr6594385ejb.21.1713795958020; 
 Mon, 22 Apr 2024 07:25:58 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 i22-20020a1709061cd600b00a55a10eb070sm2796438ejh.214.2024.04.22.07.25.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 07:25:57 -0700 (PDT)
Date: Mon, 22 Apr 2024 16:25:56 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <ZiZzdAX-qI-7wCMC@nanopsycho>
References: <20240422130611.2544-1-piotr.kwapulinski@intel.com>
 <20240422130611.2544-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240422130611.2544-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713795958; x=1714400758;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=dIINu9KyBDBX/cBbMG71Op3zuuN85u67R5eLl+Z8CAA=;
 b=k8mlZS1F1Ah3j34ItTieVczPH/V7u2Gg5e0q0BQ/iLApNMCRnRLibd7TFXoCINnD/P
 DF5pWo4SpBoEHcQy6VZjoUmhF99t80o7FSk0LjIsDj6gvPsQtqrEaWwbwgPaULsSAPKO
 ewsDubn+lpSJtkAa+c5vDyfO3I3OXZjeKVNPFI6koV0/xIHxHsGb5Tgiehf2tiIZqS59
 PHquCThmbJCM8asmWqivBUADCLroJp33pyncCUq5c5/MWGqnBuTC+F7sMv3wludIexc3
 RaZ9MjK28SynxjZTCdYCn5LBx1cqak9/LknyMcDfjvcNC+RjdzZrX2il523z7fJEjZbv
 82Qw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=k8mlZS1F
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ixgbe: Enable link
 management in E610 device
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
Cc: netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Carolyn Wyborny <carolyn.wyborny@intel.com>, Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Apr 22, 2024 at 03:06:11PM CEST, piotr.kwapulinski@intel.com wrote:

[...]


>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>index 559b443..ea6df1e 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>@@ -1,5 +1,5 @@
> /* SPDX-License-Identifier: GPL-2.0 */
>-/* Copyright(c) 1999 - 2018 Intel Corporation. */
>+/* Copyright(c) 1999 - 2024 Intel Corporation. */
> 
> #ifndef _IXGBE_H_
> #define _IXGBE_H_
>@@ -20,6 +20,7 @@
> #include "ixgbe_type.h"
> #include "ixgbe_common.h"
> #include "ixgbe_dcb.h"
>+#include "ixgbe_e610.h"
> #if IS_ENABLED(CONFIG_FCOE)
> #define IXGBE_FCOE
> #include "ixgbe_fcoe.h"
>@@ -28,7 +29,6 @@
> #include <linux/dca.h>
> #endif
> #include "ixgbe_ipsec.h"
>-

Leftover hunk?


> #include <net/xdp.h>
> 
> /* common prefix used by pr_<> macros */

[...]


>+static const struct ixgbe_mac_operations mac_ops_e610 = {
>+	.init_hw			= ixgbe_init_hw_generic,
>+	.start_hw			= ixgbe_start_hw_X540,
>+	.clear_hw_cntrs			= ixgbe_clear_hw_cntrs_generic,
>+	.enable_rx_dma			= ixgbe_enable_rx_dma_generic,
>+	.get_mac_addr			= ixgbe_get_mac_addr_generic,
>+	.get_device_caps		= ixgbe_get_device_caps_generic,
>+	.stop_adapter			= ixgbe_stop_adapter_generic,
>+	.set_lan_id			= ixgbe_set_lan_id_multi_port_pcie,
>+	.read_analog_reg8		= NULL,

Pointless initialization, it's null already. You have many cases of
this below.



>+	.write_analog_reg8		= NULL,
>+	.set_rxpba			= ixgbe_set_rxpba_generic,
>+	.check_link			= ixgbe_check_link_e610,
>+	.blink_led_start		= ixgbe_blink_led_start_X540,
>+	.blink_led_stop			= ixgbe_blink_led_stop_X540,
>+	.set_rar			= ixgbe_set_rar_generic,
>+	.clear_rar			= ixgbe_clear_rar_generic,
>+	.set_vmdq			= ixgbe_set_vmdq_generic,
>+	.set_vmdq_san_mac		= ixgbe_set_vmdq_san_mac_generic,
>+	.clear_vmdq			= ixgbe_clear_vmdq_generic,
>+	.init_rx_addrs			= ixgbe_init_rx_addrs_generic,
>+	.update_mc_addr_list		= ixgbe_update_mc_addr_list_generic,
>+	.enable_mc			= ixgbe_enable_mc_generic,
>+	.disable_mc			= ixgbe_disable_mc_generic,
>+	.clear_vfta			= ixgbe_clear_vfta_generic,
>+	.set_vfta			= ixgbe_set_vfta_generic,
>+	.fc_enable			= ixgbe_fc_enable_generic,
>+	.set_fw_drv_ver			= ixgbe_set_fw_drv_ver_x550,
>+	.init_uta_tables		= ixgbe_init_uta_tables_generic,
>+	.set_mac_anti_spoofing		= ixgbe_set_mac_anti_spoofing,
>+	.set_vlan_anti_spoofing		= ixgbe_set_vlan_anti_spoofing,
>+	.set_source_address_pruning	=
>+				ixgbe_set_source_address_pruning_x550,
>+	.set_ethertype_anti_spoofing	=
>+				ixgbe_set_ethertype_anti_spoofing_x550,
>+	.disable_rx_buff		= ixgbe_disable_rx_buff_generic,
>+	.enable_rx_buff			= ixgbe_enable_rx_buff_generic,
>+	.get_thermal_sensor_data	= NULL,
>+	.init_thermal_sensor_thresh	= NULL,
>+	.fw_recovery_mode		= NULL,
>+	.enable_rx			= ixgbe_enable_rx_generic,
>+	.disable_rx			= ixgbe_disable_rx_e610,
>+	.led_on				= ixgbe_led_on_generic,
>+	.led_off			= ixgbe_led_off_generic,
>+	.init_led_link_act		= ixgbe_init_led_link_act_generic,
>+	.reset_hw			= ixgbe_reset_hw_e610,
>+	.get_media_type			= ixgbe_get_media_type_e610,
>+	.get_san_mac_addr		= NULL,
>+	.get_wwn_prefix			= NULL,
>+	.setup_link			= ixgbe_setup_link_e610,
>+	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
>+	.get_bus_info			= ixgbe_get_bus_info_generic,
>+	.setup_sfp			= NULL,
>+	.acquire_swfw_sync		= ixgbe_acquire_swfw_sync_X540,
>+	.release_swfw_sync		= ixgbe_release_swfw_sync_X540,
>+	.init_swfw_sync			= ixgbe_init_swfw_sync_X540,
>+	.prot_autoc_read		= prot_autoc_read_generic,
>+	.prot_autoc_write		= prot_autoc_write_generic,
>+	.setup_fc			= ixgbe_setup_fc_e610,
>+	.fc_autoneg			= ixgbe_fc_autoneg_e610,
>+};
>+
>+static const struct ixgbe_phy_operations phy_ops_e610 = {
>+	.init				= ixgbe_init_phy_ops_e610,
>+	.identify			= ixgbe_identify_phy_e610,
>+	.read_reg			= NULL,
>+	.write_reg			= NULL,
>+	.read_reg_mdi			= NULL,
>+	.write_reg_mdi			= NULL,
>+	.identify_sfp			= ixgbe_identify_module_e610,
>+	.reset				= NULL,
>+	.setup_link_speed		= ixgbe_setup_phy_link_speed_generic,
>+	.read_i2c_byte			= NULL,
>+	.write_i2c_byte			= NULL,
>+	.read_i2c_sff8472		= NULL,
>+	.read_i2c_eeprom		= NULL,
>+	.write_i2c_eeprom		= NULL,
>+	.setup_link			= ixgbe_setup_phy_link_e610,
>+	.set_phy_power			= NULL,
>+	.check_overtemp			= NULL,
>+	.enter_lplu			= ixgbe_enter_lplu_e610,
>+	.handle_lasi			= NULL,
>+	.read_i2c_byte_unlocked		= NULL,
>+};
>+
>+static const struct ixgbe_eeprom_operations eeprom_ops_e610 = {
>+	.init_params			= NULL,
>+	.read				= ixgbe_read_ee_aci_e610,
>+	.read_buffer			= NULL,
>+	.write				= NULL,
>+	.write_buffer			= NULL,
>+	.validate_checksum		= ixgbe_validate_eeprom_checksum_e610,
>+	.update_checksum		= NULL,
>+	.calc_checksum			= NULL,
>+};
>+

[...]


>+/**
>+ * ixgbe_process_link_status_event - process the link event
>+ * @adapter: pointer to adapter structure
>+ * @link_up: true if the physical link is up and false if it is down
>+ * @link_speed: current link speed received from the link event
>+ *
>+ * Return: 0 on success and negative on failure.
>+ */
>+static int
>+ixgbe_process_link_status_event(struct ixgbe_adapter *adapter, bool link_up,
>+				u16 link_speed)
>+{
>+	struct ixgbe_hw *hw = &adapter->hw;
>+	int status;
>+
>+	/* update the link info structures and re-enable link events,
>+	 * don't bail on failure due to other book keeping needed

Why don't you start the sentence with capital letter and end with "."?


>+	 */
>+	status = ixgbe_update_link_info(hw);
>+	if (status)
>+		e_dev_err("Failed to update link status, err %d aq_err %d\n",
>+			  status, hw->aci.last_status);
>+
>+	ixgbe_check_link_cfg_err(adapter, hw->link.link_info.link_cfg_err);
>+
>+	/* Check if the link state is up after updating link info, and treat
>+	 * this event as an UP event since the link is actually UP now.
>+	 */
>+	if (hw->link.link_info.link_info & IXGBE_ACI_LINK_UP)
>+		link_up = true;
>+
>+	/* turn off PHY if media was removed */
>+	if (!(adapter->flags2 & IXGBE_FLAG2_NO_MEDIA) &&
>+	    !(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
>+		(adapter->flags2 |= IXGBE_FLAG2_NO_MEDIA);
>+		if (ixgbe_aci_set_link_restart_an(hw, false))
>+			e_dev_err("can't set link to OFF\n");
>+	}

[...]
