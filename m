Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3720A82BFFC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 13:49:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A016142E21;
	Fri, 12 Jan 2024 12:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A016142E21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705063767;
	bh=WdAL1zvj3PJjg4O7JY3bfPCKfGnZforu7n0vE87MDuk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3rwCPV1r9Z8/9J550bRC5jhC26Y6jE3GuJrGrNHyjGUX/caiBfQs7MhKoA1MLXP/P
	 r6BsRetYuxUVG5Q4KEqeJP2hB8LIBZARgrNoHqmWyk/JeWTegaxHI/CgPtcgrqjsBp
	 JuGMGSGiWNtv3c+lwzlZlcdhBEp/wzJUd1dgcKWZe+9J+IWm34zuo3yaxnavdGZeEM
	 KZFrg8vekTAojlGw5mW440Tyg2lUkrBQELgf/3vXvbL9PMeAUx61yprahx2uAIoea6
	 8uddHQ2Th6zXSxevlsw+HcvrzcGUuN1Kk83OMeUY0wdEGRhbXSMbDLJQaYhxeSu7Vb
	 VHwHDThmHtBOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7hwNkvf_zuP; Fri, 12 Jan 2024 12:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7282A42E1D;
	Fri, 12 Jan 2024 12:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7282A42E1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBE0F1BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 12:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1836C40260
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 12:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1836C40260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sc8hixwlLB0j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 12:49:14 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E321340147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 12:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E321340147
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-55569b59f81so7897500a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 04:49:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705063751; x=1705668551;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WdAL1zvj3PJjg4O7JY3bfPCKfGnZforu7n0vE87MDuk=;
 b=iH6rfyVukXXM6OmfP/2kSz75gpVmGoLHNKGCiDL9dDZzuNV4+Uu94+Bm+2oJD6IOZT
 vsShon9Jd95kZ149UnvfPEDUIJxjCnpwJYu74cbt6sJu0GDcTAg5jNRCOVAatgBYQwK1
 pyVCzhIrrMQXrjtjhRq5ajmJ+9gQSluJtkNbzABcQ6w/w3dMyb8mWUi77NbA2oCzmoat
 1Ya3Ipqa1SlYdiUvGAxi8WD0sfE/gNMRN9o3sflWopUVEHH03LwK5A5d17fUfScrsk+d
 Xbk9KdBrTa7Ecrs7PPvwOpVaVQLsH6cys96n5tExbQAIWOUtp6DRfCb7C/vdn3iu3GRu
 cKPw==
X-Gm-Message-State: AOJu0YzdM+3ozia33AyVbmopHIBu2g1W/hel1MHKTtEDx2wSSbQLPimT
 zrIPbGo9uEn5zuakxFWV8KC8sOQ11okJGQ==
X-Google-Smtp-Source: AGHT+IG2PJyT+YYuGiK7VUFhWoSoaiD+o4PXnQRvazHmTSb9/opKtMvaHm+NYI2TrbYkMviuWKIB0Q==
X-Received: by 2002:a05:6402:5214:b0:558:c366:f010 with SMTP id
 s20-20020a056402521400b00558c366f010mr642520edd.24.1705063751364; 
 Fri, 12 Jan 2024 04:49:11 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 fe7-20020a056402390700b0055668ccd9a3sm1754184edb.17.2024.01.12.04.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jan 2024 04:49:10 -0800 (PST)
Date: Fri, 12 Jan 2024 13:49:09 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <ZaE1Ra8JQY4RoTTu@nanopsycho>
References: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
 <20240112095945.450590-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240112095945.450590-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1705063751; x=1705668551;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WdAL1zvj3PJjg4O7JY3bfPCKfGnZforu7n0vE87MDuk=;
 b=3XQXYZ7XKl45XE3rTQgK5Q8UzQ6Bb8iyXV1rZzIi/WG3r9IKzKuG3+6I0tayqVWkUo
 /lSN1oa3Dzd3YUsv77ZzWzbjNH139AAVnHKhaP1sN5INdUTAYfiHDHzZz1k+QCqG/SdX
 8sH1wXZsrP8UMb6gEpQLVF4AJDw1bsSOG4K2xJABne3MA15t3adXQVsHEQp6izWNff9v
 P2fVQAjvXrLYCFpMLUfkf3NM2dqqXEUKBnkGGPRoUWdl8QCskr/A8GxCvDr/CNBcjsPE
 G4tbe6AEY42yBRsxthWdnvgZI8vyKQzrlUGzCCGOMX4lI0d+Tv6M2Gs75vDmf/Z95Sey
 a6NA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=3XQXYZ7X
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
Cc: anthony.l.nguyen@intel.com, Jan Sokolowski <jan.sokolowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jan 12, 2024 at 10:59:45AM CET, jedrzej.jagielski@intel.com wrote:
>Currently after entering FW Recovery Mode we have no info in logs
>regarding current FW state.
>
>Add function reading content of the alternate RAM storing that info and
>print it into the log. Additionally print state of CSR register.
>
>Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e.h        |  2 ++
> drivers/net/ethernet/intel/i40e/i40e_main.c   | 35 +++++++++++++++++++
> .../net/ethernet/intel/i40e/i40e_register.h   |  2 ++
> drivers/net/ethernet/intel/i40e/i40e_type.h   |  5 +++
> 4 files changed, 44 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>index ba24f3fa92c3..6ebd2fd15e0e 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>@@ -23,6 +23,8 @@
> /* Useful i40e defaults */
> #define I40E_MAX_VEB			16
> 
>+#define I40_BYTES_PER_WORD		2
>+
> #define I40E_MAX_NUM_DESCRIPTORS	4096
> #define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
> #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index 4977ff391fed..f5abe8c9a88d 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -15414,6 +15414,39 @@ static int i40e_handle_resets(struct i40e_pf *pf)
> 	return is_empr ? -EIO : pfr;
> }
> 
>+/**
>+ * i40e_log_fw_recovery_mode - log current FW state in Recovery Mode
>+ * @pf: board private structure
>+ *
>+ * Read alternate RAM and CSR registers and print them to the log
>+ **/
>+static void i40e_log_fw_recovery_mode(struct i40e_pf *pf)
>+{
>+	u8 buf[I40E_FW_STATE_BUFF_SIZE] = {0};
>+	struct i40e_hw *hw = &pf->hw;
>+	u8 fws0b, fws1b;
>+	u32 fwsts;
>+	int ret;
>+
>+	ret = i40e_aq_alternate_read_indirect(hw, I40E_ALT_CANARY,
>+					      I40E_ALT_BUFF_DWORD_SIZE, buf);
>+	if (ret) {
>+		dev_warn(&pf->pdev->dev,
>+			 "Cannot get FW trace buffer due to FW err %d aq_err %s\n",
>+			 ret, i40e_aq_str(hw, hw->aq.asq_last_status));
>+		return;
>+	}
>+
>+	fwsts = rd32(&pf->hw, I40E_GL_FWSTS);
>+	fws0b = FIELD_GET(I40E_GL_FWSTS_FWS0B_MASK, fwsts);
>+	fws1b = FIELD_GET(I40E_GL_FWSTS_FWS1B_MASK, fwsts);
>+
>+	print_hex_dump(KERN_DEBUG, "Trace Buffer: ", DUMP_PREFIX_NONE,
>+		       BITS_PER_BYTE * I40_BYTES_PER_WORD, 1, buf,
>+		       I40E_FW_STATE_BUFF_SIZE, true);

I don't follow. Why exactly you want to pollute dmesg with another
messages? Can't you use some other interface? Devlink health reporter
looks like a suitable alternative for this kind of operations.



>+	dev_dbg(&pf->pdev->dev, "FWS0B=0x%x, FWS1B=0x%x\n", fws0b, fws1b);
>+}
>+
> /**
>  * i40e_init_recovery_mode - initialize subsystems needed in recovery mode
>  * @pf: board private structure
>@@ -15497,6 +15530,8 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
> 	mod_timer(&pf->service_timer,
> 		  round_jiffies(jiffies + pf->service_timer_period));
> 
>+	i40e_log_fw_recovery_mode(pf);
>+
> 	return 0;
> 
> err_switch_setup:
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
>index 14ab642cafdb..8e254ff9c035 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
>@@ -169,6 +169,8 @@
> #define I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT 0
> #define I40E_PRTDCB_TPFCTS_PFCTIMER_MASK I40E_MASK(0x3FFF, I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT)
> #define I40E_GL_FWSTS 0x00083048 /* Reset: POR */
>+#define I40E_GL_FWSTS_FWS0B_SHIFT 0
>+#define I40E_GL_FWSTS_FWS0B_MASK  I40E_MASK(0xFF, I40E_GL_FWSTS_FWS0B_SHIFT)
> #define I40E_GL_FWSTS_FWS1B_SHIFT 16
> #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHIFT)
> #define I40E_GL_FWSTS_FWS1B_EMPR_0 I40E_MASK(0x20, I40E_GL_FWSTS_FWS1B_SHIFT)
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
>index 725da7edbca3..0372a8d519ad 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>@@ -1372,6 +1372,11 @@ struct i40e_lldp_variables {
> #define I40E_ALT_BW_VALUE_MASK		0xFF
> #define I40E_ALT_BW_VALID_MASK		0x80000000
> 
>+/* Alternate Ram Trace Buffer*/
>+#define I40E_ALT_CANARY				0xABCDEFAB
>+#define I40E_ALT_BUFF_DWORD_SIZE		0x14 /* in dwords */
>+#define I40E_FW_STATE_BUFF_SIZE			80
>+
> /* RSS Hash Table Size */
> #define I40E_PFQF_CTL_0_HASHLUTSIZE_512	0x00010000
> 
>-- 
>2.31.1
>
>
