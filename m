Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3238CAFC946
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 13:14:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4C4360D6E;
	Tue,  8 Jul 2025 11:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k1YFo_82wOWL; Tue,  8 Jul 2025 11:14:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DC0060C19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751973244;
	bh=HsvAJSLDaymS5Tj1dZnIcmrJZYcW6e5LGsOhp7xuFRE=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L3gLCIv//gfGIkOqW0Xr7Ir9EQVT4npRN1U5v0f30F0Hfgh+UDF3voHHYMaIbFC3M
	 zfTFr+9YXUxmRpI5Z+0W2lz/Q9ujXU+qg7wtO+TIl1sVzf8NS6222tHfQfKcmqNR4p
	 YFl9U+3KQLFSVYUH5Zl4jr3DkYH7sUBChKPPHoiyAR7K+D9jVJxQiSqqYFU7Fx0CBH
	 0OtNeUZCtPLdqD2s8AmZTZQn/smpFbExjSNgQzZPC1BpflOddoAMQqTs6+90WDLT5f
	 3LcoMdr9pj35mig4jLkDn0clHn1ruc62nDsnhFxVDzwVQAKasoKWDpNeRqugKoanCH
	 9Xkx7pQHZOkkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DC0060C19;
	Tue,  8 Jul 2025 11:14:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E6C31BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 11:14:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73E8A81315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 11:14:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cPUqexKAMpfz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 11:14:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::632; helo=mail-ej1-x632.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9AE88812F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AE88812F9
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AE88812F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 11:14:01 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-ade5b8aab41so884115166b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 04:14:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751973239; x=1752578039;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HsvAJSLDaymS5Tj1dZnIcmrJZYcW6e5LGsOhp7xuFRE=;
 b=FQo4sD8+Ln5IfDaOWFvDy0matnGV7uqRv4CnsNb0Pkf8G6IDVjE20xm6v3ZqPx6o0t
 RW3se0ZZATu+Jp3+2+IGRnYA9rv81pCfB7PqSU91Fwu8E4wvPV4L4qe+zEg+nnXmlgBi
 rFj0hi31/WL+fXm4It0ih8LIXsnTUOTIZe2h4IlYqMvQCnbSDjht8kiwgwi5d9Bw6PBM
 UHOteOONsD/wmK8fPKKWsINd7r7x81LpPTFwPbhlbg9RgS6/sBq/IcM1NcJmpzMV/Lqg
 VkE/HCYMjSnEKDGnfb7lIysGsvxR+6a9HxKwzi7h06w59jhkYxULUZGvAAyS4GbFWbLJ
 OPbQ==
X-Gm-Message-State: AOJu0YzpHkylWEzReXpJB89rQ5kiWJW2T6VnsBFTPhObL+sikeRkurer
 qfHXyRCX/tRj8SuvcU9+TKxf0rAR3zj4N0RGjtkPR/BYcgqT0tpqtX7JntzCwhJEnQ==
X-Gm-Gg: ASbGncv7JFm6TNzlMNMlV/QnzGtux1E3iipfx7C7AA1O4W9KmlaywTkhLmvh+xfuss1
 aoN3NqlfUNNfDLPEhJbncG62CVYc5394B40QJv4ngmAY4Xx6hUGAhi7bcQqIv5YKiiQUPQsdoXs
 JgLm70jk95nzix65tS9wG8uGbqxCz7lBMaSQbF0YNJJ8FxjMIOWXUNoMW0JCkCiFGPtEBLJgP/L
 kI93zeWIoh0C9yolegEAwCIDoSLeJAab9XmJOE9pfvPdAd2/SL8WmQANzs88Pb9pMcJ+x3zjaXd
 yMyrxl7F1T/MzIn3//yvGZk7xJnAG/aESSxpxq/vThC4TdEOk0Dp+YJeMqS4d/O44AuQfimG6kY
 =
X-Google-Smtp-Source: AGHT+IEJkJqPpNFxB/Atqrd91/lgHGhPJPD80WjRy1F+MJTPvST0ALfz0vkr7NM1so4XFRp1DaUqGA==
X-Received: by 2002:a17:907:3a85:b0:ae0:c534:2cea with SMTP id
 a640c23a62f3a-ae3fe7491dcmr1054557966b.50.1751973239215; 
 Tue, 08 Jul 2025 04:13:59 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae3f6b0336asm876942666b.115.2025.07.08.04.13.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 04:13:58 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <06b5938a-0238-4da0-8b8b-dc2df95210f1@jacekk.info>
Date: Tue, 8 Jul 2025 13:13:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <33f2005d-4c06-4ed4-b49e-6863ad72c4c0@jacekk.info>
 <IA3PR11MB8986B9D474298EEEFA3C57E5E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <b3273f0c-c708-488e-88c0-853e4e8e5ed5@jacekk.info>
 <IA3PR11MB898618236CA2EA46C0A861B7E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB898618236CA2EA46C0A861B7E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751973239; x=1752578039; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=HsvAJSLDaymS5Tj1dZnIcmrJZYcW6e5LGsOhp7xuFRE=;
 b=Q6BZNbN7xJbaTHt6KzIWFA+KLkYToCjW8HaqsjD++2ZwENngBaPrnmL471pgShV5Fd
 wTjgRB2rOXoKGg+H1lz8nqD7OWJAicXDjBKDhFXWy/tDqg1yVrUHLobKf91Q/Qu2ksq0
 RmiOJOc8WfC8/bXd4ptEpNQWucPw15k8DYfbNEAOMJJcNaxcNXZWQR9yztofsokwL6PL
 a9ume0/Q9HJeYgOoiDvtY2G4w/q0sXlSpk2XV7Uj6hbnFoEuaP+Bw2Ash/pFjKKOYQLV
 n7U1bVeYlXXN83jvybwmx6iX46+T9GWVK80uB5Pz7LgyJ6omd+lF8wUZrSioJzSWPPGv
 BiOg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=Q6BZNbN7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ixgbe: drop
 unnecessary constant casts to u16
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

> So, the change looks scary for the first glance, but GCC actually
> handles it the same way.

Basically if there are differences, it would be a compiler bug
due to violation of C language specification.

-- 
Best regards,
  Jacek Kowalski
