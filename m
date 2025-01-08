Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0525A05677
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 10:15:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B611440269;
	Wed,  8 Jan 2025 09:15:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XNZ6N9IQqkTp; Wed,  8 Jan 2025 09:15:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C91634024F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736327725;
	bh=6m5KlK8+RBIZlUGRVITdhiVZ+x1QKY3m0/aGtsKpFpE=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tNfXlCcG8Etc2gXcUH/RcFRU8yJPfekMeFw+BSkfNkP0vT/fn32/MkGy+EmRKl7d9
	 BI/YeOHvQWlELupNev1m2CGU/gc4JO5QEnbMp89ywzXF2ssMkidi8xkxJ/28Yoe/Qt
	 g8bOpF8o+S0P+otWxAB8DguEXc7A8Wmo2A7/wzd1v89cJrmtkY/xKhf99aJYvegWEW
	 iZOkMi0FYQCQPSgfG5K0p9HQx4PY24fRLkBjEKJl8lpTArsOxwVZ5/75j7PAs7SxGF
	 q3e5x5q7VSryNz9QE+DdMHfucR42wxFHvr7ZbyzIn4CrsFLDIanH9064W/cUVcE52w
	 b6Oq5Sr67B4wA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C91634024F;
	Wed,  8 Jan 2025 09:15:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A6EB01EB8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 09:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80ADB60688
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 09:15:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-FAsPCQMOft for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 09:15:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63C9160630
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63C9160630
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63C9160630
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 09:15:22 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-43623f0c574so113439685e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jan 2025 01:15:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736327720; x=1736932520;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6m5KlK8+RBIZlUGRVITdhiVZ+x1QKY3m0/aGtsKpFpE=;
 b=iFd5+M9FnP35eRR9FMaQQUPp0dO03T30+XjFwChDpRR3nTtR9HuSQVEtRjzymYAYCZ
 wQyNu8yXndsdQrg/Lghu3EfISjqFJklvfUpG//DD9xbF9+3bIgc/Zn9e7sS2KEbFzNq7
 0S6kOd+daIrpiJNzvHIZg3eoaRp0kq6gOVtB0S5lADZUCb0gNHr3JLNlqhL52TAjpoLw
 qibXTzEU5YTEPBZorcp5R0E4L1UNzt8oHvsA6SugPUs5H8ruulMiVn3Bu3IK8qeB3ci5
 Z0nj4Fu6jqwBWOszxTmh/ik2TBvmAJ9mPRdAote8MgOr7M6OkF0IPoZwt8fxWXbm8Yr0
 WhiA==
X-Gm-Message-State: AOJu0YzQvsaZGz5yY7GQ1JSEasy1F4j4te6aY1LwRlKe7CDzjN9Px4UF
 1uXeXgaYYi+26UUANjJtDKqy9MD2fWaDCZF/kaX4B+LksQhFlCuCFPeDbliFViU=
X-Gm-Gg: ASbGncslIBSysV1NOHpj5xo4Gg3k4ZkfOYip5KnHAeq0tmW3reSXBZPDz3X4DkbhJKt
 z/Dz+TFBR88ZxJeMZklsaQxd9sBBH6YX+woIcPglof+6hyTCS15qTt1enS5bn4pCR8KZku3c3W1
 rGCJVjqSvzKDopM+JJUF9A02s2FgcholN0RyuC4q5p7apjVr6Pz5U9fCzjOmuVJNRF+m88r8wvp
 A0S0b7nw67XdMTzo8K4+0MSgIswpNbWBkC8W/gpS2CZ5MlPU/ffD0Co1lms8A==
X-Google-Smtp-Source: AGHT+IFi85l4oSRqoOoyiksLH2IiNvTm5pPfUMcy24b0mt0C14jh5wkX6xZ88cfophht0Eosuzk0xQ==
X-Received: by 2002:a05:600c:3143:b0:434:fbda:1f44 with SMTP id
 5b1f17b1804b1-436e26a8c09mr14680245e9.19.1736327720142; 
 Wed, 08 Jan 2025 01:15:20 -0800 (PST)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e2da72fasm14077885e9.9.2025.01.08.01.15.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2025 01:15:19 -0800 (PST)
Date: Wed, 8 Jan 2025 12:15:16 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <e7d73b32-f12a-49d1-8b60-1ef83359ec13@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736327720; x=1736932520; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6m5KlK8+RBIZlUGRVITdhiVZ+x1QKY3m0/aGtsKpFpE=;
 b=nmopVsEKzt5jIeut5yqTakqpkXqrBxhmfX9xqL3XvAGxFPoAAVDbZreqM/qkxXJTCL
 n4pKAxV74xmj8FqmrsR22XwQUudYuEWGRyNXYrQaZDhNno3/tRIZ5riEqyNGRQlxFvBU
 0AIeGpdDNGErLUV3BkabQj3vk7H7LwOIz3FKDZfkSg5tjDx7sdXX3rX0XKSv4ChlvSRv
 XQ5NaRA+MEcZcbQjNdZU6VB3XPCzk3CNsuBaAJXChyriY0jFNEKU5YO46AA5byZnCIqH
 9AVqjBvmN4UU9LV8PP1y4cjJRVbtPS2ebe386SmCpQLZRrh7ITMGiLTaRqNzAQ5UmDpP
 0bEA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=nmopVsEK
Subject: [Intel-wired-lan] [bug report] ixgbe: Add link management support
 for E610 device
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

Hello Piotr Kwapulinski,

Commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
device") from Dec 5, 2024 (linux-next), leads to the following Smatch
static checker warning:

	drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:1125 ixgbe_is_media_cage_present()
	warn: signedness bug returning '(-95)'

drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
    1103 static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
                ^^^^
    1104 {
    1105         struct ixgbe_aci_cmd_get_link_topo *cmd;
    1106         struct ixgbe_aci_desc desc;
    1107 
    1108         cmd = &desc.params.get_link_topo;
    1109 
    1110         ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_topo);
    1111 
    1112         cmd->addr.topo_params.node_type_ctx =
    1113                 FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_CTX_M,
    1114                            IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT);
    1115 
    1116         /* Set node type. */
    1117         cmd->addr.topo_params.node_type_ctx |=
    1118                 FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_TYPE_M,
    1119                            IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE);
    1120 
    1121         /* Node type cage can be used to determine if cage is present. If AQC
    1122          * returns error (ENOENT), then no cage present. If no cage present then
                                   ^^^^^^

    1123          * connection type is backplane or BASE-T.
    1124          */
--> 1125         return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);

This is a bool function.  Based on the name, it should return true for
present and false for not but it does the reverse.  I don't know the code
well enough to say if the returns should be changed or the function name.

The comment says that ixgbe_aci_get_netlist_node() returns -ENOENT but
actually the only error code it returns is -EOPNOTSUPP.

    1126 }

regards,
dan carpenter
