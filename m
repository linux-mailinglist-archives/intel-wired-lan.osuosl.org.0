Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5DDD39528
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Jan 2026 13:56:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 594D461780;
	Sun, 18 Jan 2026 12:56:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wTpdfzMmTz3V; Sun, 18 Jan 2026 12:56:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDF3261784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768741015;
	bh=5vuppoT7xEbD8pTBXyzO8MGSdOfeAdBaep+fRisqsu8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vDUuHrGq/7xtthXQv1FqI6fhwxfbef/1cJrwsr6dLJTmCXTfyKPjZM7XsBC2P769v
	 p1th/ixEInNmkBKA/PBlgLO8rKDrgPMBxnGeTaxnde/MEV/kJoTzLaKclOVU9o4wY1
	 0oWNiZ5LmptTiYIN678nNs8wvA4V6gxdcCznbDpHoC7DQxmqVRA0+b6+hU/DJ2V219
	 yu9lA7b/cvs/BJhPae/psm9Vmfv1ogdDJCgn4M1kUHB+Hhp9sOSXezNR7CO/mjMYLc
	 LfqUiwE/Nrnq5q4paiXCG9KH2Y2BPiwZWPB5+dQQ+9c3+aueudUPcD2+Iye0sxusxl
	 coDj9fsztc+Uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDF3261784;
	Sun, 18 Jan 2026 12:56:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1038A160
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jan 2026 12:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F242B418B6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jan 2026 12:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9N4_BlLZymPF for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Jan 2026 12:56:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::429; helo=mail-wr1-x429.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 038E5418AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 038E5418AC
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 038E5418AC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jan 2026 12:56:52 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-42fbc3056afso2048550f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jan 2026 04:56:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768741011; x=1769345811;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5vuppoT7xEbD8pTBXyzO8MGSdOfeAdBaep+fRisqsu8=;
 b=vMRMoZQ+O4Osii+JXtrI4gG41fZpVM9yXihaRYWSRCHj4ykvUpdRyvj/dZ1R9xgE1Z
 hsnVndRHaoUnuXraiE/KO3klat6qDswsV2YFWP9qNHFD5dCskmvbdZKygqNyUpKywfHU
 VSkFIFf0A+SV4leXM5Hin1iRQarSBLv+PpKgzyF1zPSni7Ri04ZIy5FXyMUGSzeCK/Sn
 MW+TaR+arw43Re5ngDrBU2VbQAU9qb5wMMElDpC0LFoZblfxWiL6XnoieyJfPOdFoSq3
 DLBEWeoynojSOuI5h8dvJjH5RPllQCIQKl7xoZwXVcmKpHNvfBHZ/UwDnWYbGkUxTr4F
 IEJg==
X-Gm-Message-State: AOJu0YwvmCV7m/Q067XTxJSQZlI3zQAXOhZqeYG0oWoej3cjnnldj2lV
 2aBxQA+Yriw7MUJHDQ5ZqhuM8yvhmpmdOye7yUVAdwXtjd9ACjo0AHooL50o7JnS3jI=
X-Gm-Gg: AY/fxX7Sz3iGLa+Vu7XYgO9kNNkZ/1D5yOgPBaMp74afwYjqx4FtwtGt6TyckgWzrgw
 AEorX4JG20OV9XOeRwe0CSwc/vBDGtAKBR34jg1ZqCMV6P0nEyFrdsWhCQcxFbH9JisvbHl2TTA
 Dhl89gIuir6F9W4UogwJ2SqpQcH8WG4BiYHTK5ut0SiPBIO0vjSd5ltXgsDG68VEldZmWIOlNXr
 9+V+McwW/iWb80D8vHLGsRe6PB5wZ+4cISGIAM95ue/WrdKieOqFSB7Nj/p/1B6VRpzxNIhq5go
 cQYkUrdu9o3INrUXkFXNm5Gq4Bg2PXYNrVwPcl4Uxn9VTtUv/qVUwEPq38LuW6YLWRJ8AIgnQlA
 o3n5JI2szr06MkUz5+2w26/6U4s4jXljphQTm4/5e8xdEdwRcYvzbX6wXLNb39KIv69jlLXMYf3
 8PUxqIKctXkgfLpe87FdDEKjGUZ18=
X-Received: by 2002:a5d:588d:0:b0:430:ff81:2965 with SMTP id
 ffacd0b85a97d-4356a060dc4mr9673825f8f.49.1768741010676; 
 Sun, 18 Jan 2026 04:56:50 -0800 (PST)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4356992201csm17368207f8f.2.2026.01.18.04.56.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Jan 2026 04:56:50 -0800 (PST)
Date: Sun, 18 Jan 2026 15:56:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, horms@kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aWzYj1cfVuhHpGCO@stanley.mountain>
References: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1768741011; x=1769345811; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5vuppoT7xEbD8pTBXyzO8MGSdOfeAdBaep+fRisqsu8=;
 b=n2tPGy21501tzBOJ6UG1kIRbCcVMWNy088vJ1v69RmIPZcRHXDR78R7Lbwaz36Ch+C
 RadlRBSL2nYCLFg6BM31VEFZBkqR2Jb/J9Pn6ZHbOtI++3DO3hFhcke8IaWUuINf8NJt
 cSES7bggBScRZQ2HyxgUuka1g4Orw2KDTjso2Y+Qjexx5/KPpSFstfXaw0TSsPzBQg5G
 TX/UxJsosvIs83nshlNFiDwbhFDNKOhuUPvtNx6LFy0nouuevDKg5bBARdGOumkH8BF8
 NIq6dXFnF9LqDEI6AIFC18zf/Sk2RvygieLADt8NgZ0Vspt90IB0FMLtrwk1Kt1DaJ95
 iyqg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=n2tPGy21
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
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

On Fri, Jan 16, 2026 at 01:23:53PM +0100, Piotr Kwapulinski wrote:
> Fix a possible ACI issue on big-endian platforms.
> 
> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---

Intel has a lot of code which assume that it will only run on little
endian systems...  Which is probably a fair assumption, honestly.
For example:
drivers/platform/x86/intel/uncore-frequency/uncore-frequency-common.c:90 store_attr() warn: passing casted pointer '&input' to 'kstrtobool()' 32 vs 1.
drivers/net/ethernet/intel/i40e/i40e_common.c:4345 i40e_led_get_reg() warn: passing casted pointer 'reg_val' to 'i40e_read_phy_register_clause45()' 32 vs 16.
I seem them on occasion when I'm reviewing static checker warnings but
I ignore them because Intel chips are little endian.

I don't have a problem with fixing Sparse endianness warnings, but the
commit message should really say that it doesn't affect real life.

regards,
dan carpenter

