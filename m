Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A4E82DAED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jan 2024 15:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0473A41748;
	Mon, 15 Jan 2024 14:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0473A41748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705327597;
	bh=H7xm5T92TwJwkAFtHNJnBA6sJUJe8VuwE3qQUkc5mys=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=23eZvn5Co4DyizquIypGSOGMpKNAJvAwYtkDxd9jlKi+d/TJ3HNxiPzaxSAi9ttfv
	 hSZKBCu2PZef4eHjHitBbiBXMCe4wJhq6nam/4TDg18v8YM8Htb6h1mjBJPSh1fKXV
	 8dl423pRlV7MIko3Xvt+y76fR1Rb0c2zyALTFGxb4ZN0W2nACsFIHJisx7ngGTbkpW
	 QBQ/GQpUbbWxZHSQbINyDACeH5nFSPjXiEALh3zrPo40y01Dq9ZPChfoGltSFxUC14
	 +nbHuEvada6FcJy0iYBO7GzatiYiRPVRpzaUufFQV4/N/8JPGDUfY8RWlLnZyJWiZm
	 aLVZ5t6kkDpUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BLhIzN7M1Z9F; Mon, 15 Jan 2024 14:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 648BF4168A;
	Mon, 15 Jan 2024 14:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 648BF4168A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A1D21BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 14:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18FB9822B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 14:06:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18FB9822B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N5SY_ha6hH_L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jan 2024 14:06:28 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F9B782142
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 14:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F9B782142
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-40e80046275so2524775e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 06:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705327586; x=1705932386;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H7xm5T92TwJwkAFtHNJnBA6sJUJe8VuwE3qQUkc5mys=;
 b=jc5Y37uXSgKI4jTSDX5L9P2u9PE21e/CUQoy/Rr6lVCcLo9dgHTZeQoRyvtpQKeU5q
 RtmHewwoXimvy87O6UoJ0Zb0NnJ3MC1NloQeR2yznVvS5wU8Q/zMR7DDangDzmu5yAM3
 TV1OWiITcAR8TjxiALjr5U3dOjIE4Rg+1Cujgo0oMekvhd63C9mdBBOhDXYdOc9l9NJ9
 uJW7e9As5Y4VvFvyfZI9fFFttP2Ac5a3xyfFBqpHXcqwJIUAIPHL2CywDMuyEOw0Lhbe
 jedGyeKjuwroTlloBfb4spM+SBWfj/AJWtxRNB3WQEivyH1GAcsO5vwvBfviLb8xBu55
 rOWQ==
X-Gm-Message-State: AOJu0Yw4HCRUa6fb5qxf9eBc5AXJODsqq6k07pq+4ffPmVz3RnqgGz96
 dkhb3hV9FRX3M80EWGROyY+znowl/DtXmA==
X-Google-Smtp-Source: AGHT+IH4a2AeCRyzoh/vFxWnuozUa+H+1uYNl48MO0UapSJdeuXMDU7iiwGhNVSjvtELMKSp+hV5ag==
X-Received: by 2002:a05:600c:a01:b0:40e:4e48:513b with SMTP id
 z1-20020a05600c0a0100b0040e4e48513bmr3460222wmp.12.1705327586143; 
 Mon, 15 Jan 2024 06:06:26 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 v4-20020a05600c470400b0040e5945307esm16162290wmo.40.2024.01.15.06.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jan 2024 06:06:25 -0800 (PST)
Date: Mon, 15 Jan 2024 15:06:20 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Message-ID: <ZaU73JvgApp_rAI3@nanopsycho>
References: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
 <20240112095945.450590-3-jedrzej.jagielski@intel.com>
 <ZaE1Ra8JQY4RoTTu@nanopsycho>
 <DS0PR11MB77852D91C24051F70ECFBF7BF06C2@DS0PR11MB7785.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS0PR11MB77852D91C24051F70ECFBF7BF06C2@DS0PR11MB7785.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1705327586; x=1705932386;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=H7xm5T92TwJwkAFtHNJnBA6sJUJe8VuwE3qQUkc5mys=;
 b=ZWQ3KBpmRhi9F0twlKneAxLAiSSZePhQ0Azwga8FFeK947U2P1Gw2dLk/roHsRc2vQ
 VVbrguAO7wjnemZq5JfZ23ema5OUXGVC9jnjv+ztvyBU2U4UckQToI+XVKXGMgLvTCZ3
 Tpn3JaXTJvXmR4r/Q3fQSVgv+s5BvHAlr65rw6mEoPZglfoctuAePgUP12J/BxwbqKvK
 M0Q1hIUkQjbM/VejVOztQ9sPoQIjr+Hci5Rleg1ZqypOdCwibS8Dq5V2SdVBOXm050be
 OD5ykLUOJis0tO2K7xPqv6bXUldNR6sfN8eNUmyvNm7Nn19cL20LnD4D99v3S7Ps+118
 dWBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ZWQ3KBpm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] i40e-linux: Add
 support for reading Trace Buffer
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jan 15, 2024 at 11:37:22AM CET, jedrzej.jagielski@intel.com wrote:
>From: Jiri Pirko <jiri@resnulli.us> 
>Sent: Friday, January 12, 2024 1:49 PM
>
>>Fri, Jan 12, 2024 at 10:59:45AM CET, jedrzej.jagielski@intel.com wrote:
>>>Currently after entering FW Recovery Mode we have no info in logs
>>>regarding current FW state.
>>>
>>>Add function reading content of the alternate RAM storing that info and
>>>print it into the log. Additionally print state of CSR register.
>>>
>>>Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>>>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>>---
>>> drivers/net/ethernet/intel/i40e/i40e.h        |  2 ++
>>> drivers/net/ethernet/intel/i40e/i40e_main.c   | 35 +++++++++++++++++++
>>> .../net/ethernet/intel/i40e/i40e_register.h   |  2 ++
>>> drivers/net/ethernet/intel/i40e/i40e_type.h   |  5 +++
>>> 4 files changed, 44 insertions(+)
>>>
>>>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>>>index ba24f3fa92c3..6ebd2fd15e0e 100644
>>>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>>>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>>>@@ -23,6 +23,8 @@
>>> /* Useful i40e defaults */
>>> #define I40E_MAX_VEB			16
>>> 
>>>+#define I40_BYTES_PER_WORD		2
>>>+
>>> #define I40E_MAX_NUM_DESCRIPTORS	4096
>>> #define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
>>> #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
>>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>>index 4977ff391fed..f5abe8c9a88d 100644
>>>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>>>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>>@@ -15414,6 +15414,39 @@ static int i40e_handle_resets(struct i40e_pf *pf)
>>> 	return is_empr ? -EIO : pfr;
>>> }
>>> 
>>>+/**
>>>+ * i40e_log_fw_recovery_mode - log current FW state in Recovery Mode
>>>+ * @pf: board private structure
>>>+ *
>>>+ * Read alternate RAM and CSR registers and print them to the log
>>>+ **/
>>>+static void i40e_log_fw_recovery_mode(struct i40e_pf *pf)
>>>+{
>>>+	u8 buf[I40E_FW_STATE_BUFF_SIZE] = {0};
>>>+	struct i40e_hw *hw = &pf->hw;
>>>+	u8 fws0b, fws1b;
>>>+	u32 fwsts;
>>>+	int ret;
>>>+
>>>+	ret = i40e_aq_alternate_read_indirect(hw, I40E_ALT_CANARY,
>>>+					      I40E_ALT_BUFF_DWORD_SIZE, buf);
>>>+	if (ret) {
>>>+		dev_warn(&pf->pdev->dev,
>>>+			 "Cannot get FW trace buffer due to FW err %d aq_err %s\n",
>>>+			 ret, i40e_aq_str(hw, hw->aq.asq_last_status));
>>>+		return;
>>>+	}
>>>+
>>>+	fwsts = rd32(&pf->hw, I40E_GL_FWSTS);
>>>+	fws0b = FIELD_GET(I40E_GL_FWSTS_FWS0B_MASK, fwsts);
>>>+	fws1b = FIELD_GET(I40E_GL_FWSTS_FWS1B_MASK, fwsts);
>>>+
>>>+	print_hex_dump(KERN_DEBUG, "Trace Buffer: ", DUMP_PREFIX_NONE,
>>>+		       BITS_PER_BYTE * I40_BYTES_PER_WORD, 1, buf,
>>>+		       I40E_FW_STATE_BUFF_SIZE, true);
>>
>>I don't follow. Why exactly you want to pollute dmesg with another
>>messages? Can't you use some other interface? Devlink health reporter
>>looks like a suitable alternative for this kind of operations.
>
>There is no devlink support for the i40e driver at this point.

So add it, what can I say...


>Dumping log in that case happen rather occasionally and debug log lvl is used
>so this should mitigate polluting the dmesg.

Nope, please don't put thing in logs when we have proper interfaces for
them.

pw-bot: cr


>
>>
>>
>>
>>>+	dev_dbg(&pf->pdev->dev, "FWS0B=0x%x, FWS1B=0x%x\n", fws0b, fws1b);
>>>+}
>>>+
>>> /**
>>>  * i40e_init_recovery_mode - initialize subsystems needed in recovery mode
>>>  * @pf: board private structure
>>>@@ -15497,6 +15530,8 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
>>> 	mod_timer(&pf->service_timer,
>>> 		  round_jiffies(jiffies + pf->service_timer_period));
>>> 
>>>+	i40e_log_fw_recovery_mode(pf);
>>>+
>>> 	return 0;
>>> 
>>> err_switch_setup:
>>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
>>>index 14ab642cafdb..8e254ff9c035 100644
>>>--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
>>>+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
>>>@@ -169,6 +169,8 @@
>>> #define I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT 0
>>> #define I40E_PRTDCB_TPFCTS_PFCTIMER_MASK I40E_MASK(0x3FFF, I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT)
>>> #define I40E_GL_FWSTS 0x00083048 /* Reset: POR */
>>>+#define I40E_GL_FWSTS_FWS0B_SHIFT 0
>>>+#define I40E_GL_FWSTS_FWS0B_MASK  I40E_MASK(0xFF, I40E_GL_FWSTS_FWS0B_SHIFT)
>>> #define I40E_GL_FWSTS_FWS1B_SHIFT 16
>>> #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHIFT)
>>> #define I40E_GL_FWSTS_FWS1B_EMPR_0 I40E_MASK(0x20, I40E_GL_FWSTS_FWS1B_SHIFT)
>>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>>index 725da7edbca3..0372a8d519ad 100644
>>>--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>>>+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>>@@ -1372,6 +1372,11 @@ struct i40e_lldp_variables {
>>> #define I40E_ALT_BW_VALUE_MASK		0xFF
>>> #define I40E_ALT_BW_VALID_MASK		0x80000000
>>> 
>>>+/* Alternate Ram Trace Buffer*/
>>>+#define I40E_ALT_CANARY				0xABCDEFAB
>>>+#define I40E_ALT_BUFF_DWORD_SIZE		0x14 /* in dwords */
>>>+#define I40E_FW_STATE_BUFF_SIZE			80
>>>+
>>> /* RSS Hash Table Size */
>>> #define I40E_PFQF_CTL_0_HASHLUTSIZE_512	0x00010000
>>> 
>>>-- 
>>>2.31.1
>>>
>>>
