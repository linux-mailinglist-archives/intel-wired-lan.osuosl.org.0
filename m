Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A5B9C9338
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 21:27:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAEC1607CD;
	Thu, 14 Nov 2024 20:27:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vsjhVlfUvkkE; Thu, 14 Nov 2024 20:27:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16E7C60702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731616071;
	bh=ffAf8BWyy6teKWVM9dUteu+T70MIj5hSmKzS0CriiMk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=foEEWyUiV9ax+EKsiWMvfqkN+TYpgzgci5NTvhTsY+TlLtBKfv3LuUZR08ban4eFo
	 fSgxvWr3Zqkp1iexkZoK6Lc8pjAwcqnAIJ3p3BopDqZqmCqcGbSDJt/xD1gIL0/+gz
	 dOiaG3xW2huuOfCv3z75wgspoHn6UfaTi+WOFXewJVP5M1a4A2/dZeBK6yzoX4hf62
	 N3kUfWOFoonB/lK1yu6hB6ZEYcULbk/FYD01Gp3BVG1AFNRlID+oBmuC0iwl+31nZy
	 M0dgL10A+8+bUEZdlWm6dwbSUwFFDKQjrrPsnZFir9E2TlmOvbx1NAKOM45uQaTb9C
	 opMARLr9de6pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16E7C60702;
	Thu, 14 Nov 2024 20:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 711CE968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5022A40114
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:27:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NQaEF8etNIRd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 20:27:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::829; helo=mail-qt1-x829.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A2E3400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A2E3400A6
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A2E3400A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:27:48 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id
 d75a77b69052e-460b16d4534so6056671cf.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:27:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731616067; x=1732220867;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ffAf8BWyy6teKWVM9dUteu+T70MIj5hSmKzS0CriiMk=;
 b=Z6I7iu6XWHGCxxGuoVxrmChXfsRt1bpoa3YHAZPvo+SAxMEk5P2XMD8OiUpl8wkaBo
 tuQTDvbthtbinDrMYHYuMW6b36/3YirBnD4r5pvxtruBP80O0Ysqd1+n/VcZKL1X5sKC
 +0LATxYFL1cZHbgoFluqx5PveJwnWqzWJvx4faWlljF1KV0VVKDNm8BEOoURt3eEJF6o
 Jn0/6o4Qymc41DD6jeEolgxvtI0TTmHpp3skLX4ZTkUXSXX+K6nO0XL5sqGRHNH6MQN+
 UPDcIZ8AAgxGZSbfVlAo2hxLLVieHQHf/I+DOeYv4jNFAp8Ug0h7OYq2W+BX9t0ur5bz
 0RPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWv5VXO0/mqB8eZMVFoCAQB53yStgPcGIN419tFXK3EaMRuVZvjuXQ+4qAqMntojs2DLRhg4xH95Ga++kp7wmU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxErxL1B25i9xiY1U43pp1OdUMKRlN87t27PsJ6i+METuqQvib2
 87SVMxVSQtoOlkiePwkcNagtbCHnPjqedX+jF1cbsQR170VYOKWl
X-Google-Smtp-Source: AGHT+IFqZE/LnHqrNZinz2jQmvyb/JI55JIpwo2MEGQh4cy16bGIvmVjvJukmrAwA3sV2HhcUwfJVQ==
X-Received: by 2002:a05:622a:540f:b0:458:4129:1135 with SMTP id
 d75a77b69052e-46363debbfemr2119271cf.9.1731616067023; 
 Thu, 14 Nov 2024 12:27:47 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4635aa0be2esm10143451cf.33.2024.11.14.12.27.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 12:27:46 -0800 (PST)
Date: Thu, 14 Nov 2024 15:27:46 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67365d421d74_3379ce2940@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-7-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-7-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731616067; x=1732220867; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ffAf8BWyy6teKWVM9dUteu+T70MIj5hSmKzS0CriiMk=;
 b=IEy6uFBRRLf3vhVwXKJjo9CBwQ19+IUMu3T43yW+MEU7U08vAjPe3njjAYi8j3n5Rb
 7sHBBrSsTIkW14RlKQeT2bpxxxmOnnAkKgZOXlxyDkbD9MD0aWcy4gC5G0u7ObBcUphZ
 Sgu51RkNNML96orpPKxzhsLQ95KM2/WfA1ZEZlWSCQ5/7CigMtnXblr94+0ejWVMDGhC
 cYEyDFUtDUx/NmNWSAQOqtiIluB/NdGFPdwAM7kxI8+NU67x1VZFP4N8xzEKshvNUpDB
 CD8No6qO63awzOI3hFdpszRxbm6FampwEj+eYaplGOvKnvX4l/EVF8DQSNjUwkkfpKnB
 zX5g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=IEy6uFBR
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 06/10] idpf: add PTP clock
 configuration
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

Milena Olech wrote:
> PTP clock configuration operations - set time, adjust time and adjust
> frequency are required to control the clock and mantain synchronization

s/mantain/maintain

> process.
> 
> Extend get PTP capabilities function to request for the clock adjustments
> and add functions to enable these actions using dedicated virtchnl
> messages.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
