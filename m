Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCFF903F6E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 17:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 227066082C;
	Tue, 11 Jun 2024 15:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mbY9g0uBxoBO; Tue, 11 Jun 2024 15:01:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B615B60A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718118068;
	bh=wJ6NmEpm203v83OTy1RMNtAkzbu+fQMhPGN0G4SJVPY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mIBChebae79+mm1gRr6rslRrUYL1N3Pd/J5eDY3j0raszshRoEAkLFFXAXEz98Aps
	 8Eu0E4ot9ICTQA4bo0QQgqgzq1PUFMfVyJu9/XxaEeSvgaiyAC6G3lrPFvoXCnPeYP
	 naTTlgF1tCdDdesHDT3ChHa2SJ8p79qCReYgZmHIODirmDwluVvSkzCsos856yrLmQ
	 zLb3tSFUNubDoQbfRTDDFBwTZ+krAm4MNalHxjznvlvWjq164yD9wPTCID/GcfBkvK
	 ULSkHikN3zLDj3Sl/xFOpfF+UDyJ6ARquEt2I/b/KN2yjD0h8K3EqKcED3IXho2ubK
	 P6t3U4OtUNPVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B615B60A68;
	Tue, 11 Jun 2024 15:01:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7EA1BF398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 09:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4936381491
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 09:09:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNzpdZm1Pt5c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 09:09:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=dcaratti@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2CA0981464
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CA0981464
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CA0981464
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 09:09:39 +0000 (UTC)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-389-IOePVzltN322jJSVaUxcdw-1; Tue, 11 Jun 2024 05:09:37 -0400
X-MC-Unique: IOePVzltN322jJSVaUxcdw-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2ebd7556679so24551221fa.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 02:09:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718096975; x=1718701775;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wJ6NmEpm203v83OTy1RMNtAkzbu+fQMhPGN0G4SJVPY=;
 b=vz5r0jg+XEuM/ITMkOLsBMSlcvgQF4CVTsN0Nqi3UpJiP4kOACY4ifGM3L/kj+QrcI
 g/gTgQl+bXC29YtoHCa09N/0G24LKEwgdXRGWGdn+eo+bjyEyw0xBLVuBCbi4LHayWN4
 R8xSbk5Q4dQ8OjxRlzN+owRWyKNEjF35z4cNx4dpDpymACy0FJlKJ9aGaH7AS8D5Z1lD
 BNK52/7E5r470LHF0bZX6nGGpNRCdNrAPle4GCOqWwvpQ2QTe4Z0aEJOyfvUazZQaozg
 pdauE4/72YJORbCEVCGpL87wzG9XsYDncmLZEG1no/LCCBGQpPe7b8VtA+Ej1reqWpOe
 ThTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXsJIl8xgzUJ+xIzXU4QWFOzMSBBCY6qPKZadJviQ5hpyPTA2iKKjyICE+usdttp/S7BFnin4YdTPCLtJVTXA7dZL9O8QRE5OLJOhKVVcBgDQ==
X-Gm-Message-State: AOJu0Yz4N01ET/F7CtPWBrkQSAVH63+Cb/+sV+zukY6PeHkC8gOMcTBN
 w8ZI9URm70QL3SthoSAfHzEHUm/BrZJe12ct0ED5CatbeiAfVWnCKI/3Iy4IsGnfC7Tfv2ePzDR
 qMIB1Mg0eOUl3fUoOkPPTUjH5TjegMuWxbikQCNuHGo6Hc1TA3YBeByAgba9zdk2eG7I=
X-Received: by 2002:a2e:8004:0:b0:2eb:f5ec:5ad6 with SMTP id
 38308e7fff4ca-2ebf5ec6fb4mr4791251fa.0.1718096975462; 
 Tue, 11 Jun 2024 02:09:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7wwWojKAzRVTdY5Y8CDndML4n5EP/ZdMfOeDFja/TJ2/4XahWfKaFctCxnoWRR7nsots0ag==
X-Received: by 2002:a2e:8004:0:b0:2eb:f5ec:5ad6 with SMTP id
 38308e7fff4ca-2ebf5ec6fb4mr4791061fa.0.1718096974914; 
 Tue, 11 Jun 2024 02:09:34 -0700 (PDT)
Received: from localhost (nat-pool-brq-u.redhat.com. [213.175.37.12])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4218193b0c0sm84032445e9.31.2024.06.11.02.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jun 2024 02:09:34 -0700 (PDT)
Date: Tue, 11 Jun 2024 11:09:33 +0200
From: Davide Caratti <dcaratti@redhat.com>
To: =?iso-8859-1?Q?Asbj=F8rn_Sloth_T=F8nnesen?= <ast@fiberby.net>
Message-ID: <ZmgUTZPFKk1pNxqR@dcaratti.users.ipa.redhat.com>
References: <20240609173358.193178-1-ast@fiberby.net>
MIME-Version: 1.0
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 11 Jun 2024 15:01:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1718096978;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wJ6NmEpm203v83OTy1RMNtAkzbu+fQMhPGN0G4SJVPY=;
 b=Mjaxns2ZIaRszze7VkyY1v67WCzdRvvbCn9vXexzoUw3TTyb13LI6UMj2jTz4PLlauWHDk
 G1hJmQbha0TUHlPwfOVf3fWXldibxVgX31VtePXwvWD2xpR2JPRWmcN5NMqAQbVz/NL+sM
 BeWJ3lo1LfuuK7tMHVuweAUbP3ycrA0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Mjaxns2Z
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] net: flower: validate
 encapsulation control flags
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
Cc: Louis Peens <louis.peens@corigine.com>, intel-wired-lan@lists.osuosl.org,
 Leon Romanovsky <leon@kernel.org>, linux-net-drivers@amd.com,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Tariq Toukan <tariqt@nvidia.com>, linux-kernel@vger.kernel.org,
 Edward Cree <ecree.xilinx@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, i.maximets@ovn.org,
 Martin Habets <habetsm.xilinx@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jun 09, 2024 at 05:33:50PM +0000, Asbjørn Sloth Tønnesen wrote:
> Now that all drivers properly rejects unsupported flower control flags
> used with FLOW_DISSECTOR_KEY_CONTROL, then time has come to add similar
> checks to the drivers supporting FLOW_DISSECTOR_KEY_ENC_CONTROL.
> 
> There are currently just 4 drivers supporting this key, and
> 3 of those currently doesn't validate encapsulated control flags.
> 
> Encapsulation control flags may currently be unused, but they should
> still be validated by the drivers, so that drivers will properly
> reject any new flags when they are introduced.
> 
> This series adds some helper functions, and implements them in all
> 4 drivers.
>

Reviewed-by: Davide Caratti <dcaratti@redhat.com>

