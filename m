Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F2CB8B4F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 12:25:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B495C60AA6;
	Fri, 12 Dec 2025 11:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ys0pnJEEJTlD; Fri, 12 Dec 2025 11:25:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36A9060AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765538721;
	bh=gEnn545SHxpJYbhpEqJ4kau8ivvtfD9Ghf76lIvPG6E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U/qOxfqqgqzDLKYSRysDc5FpUugp8n1hL0xqxUp/cfSxhX/NBBG4hQzHDS2CWFghq
	 do47OpSZ0PP6AZuyDeQuHOFERT8lIMJ++5bl+60MWYQCy2LHegHa0w2HlyuuCv3RsF
	 oS1GYFRN5d8BolMKNR4GqAhb3aBaFFDAFd/zjv9nhSstffe6P9CNGGneJkRHZ4Zt9I
	 TBSsNowtb0lv6ZfZ6heLYn3xcj2rIf+0B7BR9afxnSc75QaBgIDJV0QFXMtT0RLzV8
	 VTIlMpXIkVmmNycASeJeiTFZ76QGi7NweXJVDGJOy6MG7eAAzNmXjxijPp6keOL9Jd
	 vKi2djdiLGC/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36A9060AA0;
	Fri, 12 Dec 2025 11:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75F322C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 11:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64B9180EFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 11:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sd7LAnVYywNE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 11:25:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42e; helo=mail-wr1-x42e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3FFA680ED1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FFA680ED1
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FFA680ED1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 11:25:17 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-42b3b0d76fcso616405f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 03:25:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765538716; x=1766143516;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gEnn545SHxpJYbhpEqJ4kau8ivvtfD9Ghf76lIvPG6E=;
 b=DSEBWyV+55hs/ZV1G7c1ETaFptJts9kwpY/ZlCOW+Y5xEasyZveKobOopBWmXBF1g3
 lZlINv2s0TffxwT7v35So8/tftkAmKmAP7rm1pgCqmnSGyNkC2UuBZGcCiX0SjHbb8H1
 tAamnL8q1Z3PZ65LTp/OEVz6aoEY/wCNkg9dDFwoXyXtxSbjCHA+KtNPUKFKSyOFWLsY
 ScLqgD5r7xZgZVZuvXw2XEFDgfN5MBBjKTtOGsW98XvgruT5qkPTZRlSQ5uP9EZap07v
 GH+hOpXZX84sdFEA/1bc9KMXxY5lZ+D3df/ccWZwkV4R1srE//GXNwHS+GFC+uNzlTuW
 cOEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMcc5sq0vbWfpHwPL2ZozI/Q27aVjXsF+JEcAR87CzZWu4PWKjEo7S0HdAeI0Vfd1Rj6kEeTxdsKaXPAfjP3o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyHjEYH3gsRk62D4h5CsQItSTahgrFjv3skebfgMi7viA2lRFVr
 nZ+VPTV2oxY+XbCx0Gpzd3PRHIpHyS0OgLxODf9nuZlqeSl/HHqb2GHPkJk67EpP+Hk=
X-Gm-Gg: AY/fxX69B2rXTLDhwLpgyoD2L+Dl2SiaRV7WWnZWNRcvdw5Tk4jmiAN2vfOGyt1fn0s
 /2K+b4MR5gBBqPJuS/jdGBFgCcVMVNcmUnoljKq+1FvggrH0repazqbaiSWOE5pQMrzW/LXryiU
 kfJAGNy5aLwVY3BOGp02n9hQskrTq3J4gcw6w4Ghh0QV/U/27k9NhV5W35EYtbniUaimgBzhSOD
 yYmRYAPv1sUVMrO9eJxoiWiIqmoUADxe0HeyTo6DgtPezaC5PyYIqjs9rSdEYTAXi8W+8/arF1i
 bj08ngWrri96hiVDMHlUIjsBWJXQKE3pkn8ibfrAMCSZvleKiVNmwAJ7vI/wtS8sTvcDAZl85K7
 MF0doawyAwpHUO53PQuETpB1d6UuI2jf/Y94tJvg9DNLr14bjDtdgRKblN35y/Nw04tWzN7rKrA
 jhM9xDKJU/G2NZM4JH/DnqVcY=
X-Google-Smtp-Source: AGHT+IHkaay9CDV5kfE74IqgXxI+GzQAfyiag1hnUiI3Kv6EDGuWkv0C2Lwzh9GBMI+h6MNTm6fuig==
X-Received: by 2002:a05:6000:2c09:b0:42b:5406:f289 with SMTP id
 ffacd0b85a97d-42fb44a24f0mr1717666f8f.3.1765538715596; 
 Fri, 12 Dec 2025 03:25:15 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42fa8a66761sm11462241f8f.3.2025.12.12.03.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Dec 2025 03:25:15 -0800 (PST)
Date: Fri, 12 Dec 2025 12:25:12 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211194756.234043-3-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765538716; x=1766143516;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gEnn545SHxpJYbhpEqJ4kau8ivvtfD9Ghf76lIvPG6E=;
 b=vC+uora68L/Q7cs34Za4PQr8DIbaLArWyGc+PChlwv2KNhUodlLmMDmuOwrVDYZUSl
 MX8JfZSd3Oy904+htSq7i8XDs6I1b39XaDwHcD1JMn5QUWd8g2Vki5M2yByf2Y4lMpXo
 EWN57i6pcvJwmNICu0kBlY4ucdTdUIiTJdeK7o/dpMl6DV3MUUaNGtWGzGr7rqg6fp8V
 D7MXbbXQaAzs/ZgAgWJzodPU56Wj3M290HjpHG88eVHz5xtQXG8Gb55l22c2jxamVIrW
 OyW//r4H52VeWnCkx/BSHuRTCt/Yj/Uoj9wxdwDPKT0iQ+f7A0a71uHsMzAyDn4rHtL8
 9CSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=vC+uora6
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 02/13] dpll: Allow
 registering pin with firmware node
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:

[..]

>@@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>  */
> struct dpll_pin *
> dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>-	     const struct dpll_pin_properties *prop)
>+	     const struct dpll_pin_properties *prop,
>+	     struct fwnode_handle *fwnode)
> {
> 	struct dpll_pin *pos, *ret = NULL;
> 	unsigned long i;
>@@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
> 	xa_for_each(&dpll_pin_xa, i, pos) {
> 		if (pos->clock_id == clock_id &&
> 		    pos->pin_idx == pin_idx &&
>-		    pos->module == module) {
>+		    pos->module == module &&
>+		    pos->fwnode == fwnode) {

Is fwnode part of the key? Doesn't look to me like that. Then you can
have a simple helper to set fwnode on struct dpll_pin *, and leave
dpll_pin_get() out of this, no?


> 			ret = pos;
> 			refcount_inc(&ret->refcount);
> 			break;
> 		}

[..]
