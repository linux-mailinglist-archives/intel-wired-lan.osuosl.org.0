Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2248A6A51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 14:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F346605E2;
	Tue, 16 Apr 2024 12:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ALz5B0VkYLcr; Tue, 16 Apr 2024 12:09:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B624C60654
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713269371;
	bh=oqxPAaSQZjVLJpXWwn1Iq1qW/Cwql7zAxPWUp8yUpDY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FXWjYyJ/8UYeIZOYJX4n32xu8MATIFZhs7TLSpIXD3neQRfu9ky9h5R3cHHS6mFK9
	 mbboLr99AG3z7BYnwqDcIuQVTufrLW00nDsBh+QHmstCKhBh5wSr6DvvXwJH/g6pTP
	 lGwkKMj+aXIR4jJdIAsfSXE+bywLjBxp1SWkLl4Hfc1Ov9WcvilejgzW32Zg6IRvI0
	 YDmGVMvEd70EqtC6Xs9YT6ohUdNlHbD4UvGU9uQF16KRD3dXx+RLlOdL2nlVdfU+cg
	 CscXluenaNIOIcZWx/kvoraw+lfQZ2wyg7ReeAH/6citp09YzEUM4u+oPhniFs/Jvx
	 C/yQholAmzpzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B624C60654;
	Tue, 16 Apr 2024 12:09:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADD2E1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 12:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A00A80ED3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 12:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8634UNte4jjB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 12:09:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::136; helo=mail-lf1-x136.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6D7C080DB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D7C080DB9
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D7C080DB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 12:09:23 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-5176f217b7bso7447018e87.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 05:09:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713269361; x=1713874161;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oqxPAaSQZjVLJpXWwn1Iq1qW/Cwql7zAxPWUp8yUpDY=;
 b=IacHxfSp4wB79BD3+mqEvGUU+hbg/PPKCqdKd8ZEzQ+wn9PxoEpGPMfvTWiZM8sNeA
 4qC2Mea50413qhF5aYdpYyltb7NrhwLTr9wsaqXuNzEVMEhIulrpq5Xvvlbj0w2pEceR
 PVyoAd5UGL9cKjkbFDoCsn5xnC13cnb+hhMDVIuVdrep3ZuafWMNpmXKnfQPy7tkeY8g
 tdcZuZ/WPrwdYbwN9EB6+bRiXBbioxaW4whs/GoV0J7N9GokdiBxttXds2U0f1T/qna+
 cBnnmwQZir+IFH4IBfSA/4FwIALg3Pu3qFrpy1JJ7zZmRyqbiIs9pnRTr56/hVfKoqDg
 7YgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIII/ORNP2wHk05nrrMN4guaAp4e6Fp1NWpj6XydjzIVL4lbgbNQ4cNx/RBoNAG++bnTlRYXJpAXSvvyW9aINu0sU77o0L1dLqORM6W0uyow==
X-Gm-Message-State: AOJu0YxRFRm1oAdT60UOI7Kv3AyP19ZNigYaWNqdJisJZuimXrG36Zcw
 G63jGXmgNogDsvVHh66T5VEATS6e1j4e3jWQVZ//SgfYFVBbx6qmkA6z+hfD4q0=
X-Google-Smtp-Source: AGHT+IHT54aMXvJiXFtw1WKEb8p0c+IaZ9qdQXgU5/dE196fUvlVrIATdu0VWzlkVp/piTmXEB4Dzw==
X-Received: by 2002:a05:6512:2303:b0:519:166a:d217 with SMTP id
 o3-20020a056512230300b00519166ad217mr2411280lfu.32.1713269360991; 
 Tue, 16 Apr 2024 05:09:20 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 z7-20020a1709060ac700b00a521904b548sm6776006ejf.166.2024.04.16.05.09.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Apr 2024 05:09:20 -0700 (PDT)
Date: Tue, 16 Apr 2024 14:09:19 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zh5qbxbOwMXrTnO4@nanopsycho>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-4-michal.swiatkowski@linux.intel.com>
 <Zhje0mQgQTMXwICb@nanopsycho> <Zhzny769lYYmLUs0@mev-dev>
 <ZhzvGlDiuaPSEHCX@nanopsycho> <Zh4JQ4RDRIAYC+V7@mev-dev>
 <Zh4XsXwDxeu936kw@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zh4XsXwDxeu936kw@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713269361; x=1713874161;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=oqxPAaSQZjVLJpXWwn1Iq1qW/Cwql7zAxPWUp8yUpDY=;
 b=3WHD2TG6dJ6BCyVYk/MpGmkcLiZ3wzhusSUZhIes0NihlXUEjS7xL9G/pZDNdNCv/5
 kUP4Qw9ofiTCwEhti3h3ClWydWS/QKFAAZ0b0y86q7LzPkhB3mrgg+8pbycZXGq5XWgp
 K4Zo4jtUrteFzigZvEerggJ0WQkCIicpHdNDRt61m5Ie15sduaPVOeSwI35MjNchsWwe
 nVxKa9ev/ZWiUVqLx68UJA61qBR/tZpnrY9OlTwZgN1hF4GXzB45kn/ybZ9pTaV0SuQp
 /G0dcqZechFgPfQzHEbWvOFc0gvP0ccRd8r4dnlWFGrjoRpJbMyAUP4MvYe3jw2K42Yi
 M7MA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=3WHD2TG6
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/7] ice: add basic devlink
 subfunctions support
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, mateusz.polchlopek@intel.com,
 wojciech.drewek@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com, jiri@nvidia.com,
 jacob.e.keller@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Apr 16, 2024 at 08:16:17AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Apr 16, 2024 at 07:14:43AM +0200, Michal Swiatkowski wrote:
>> On Mon, Apr 15, 2024 at 11:10:50AM +0200, Jiri Pirko wrote:
>> > Mon, Apr 15, 2024 at 10:39:39AM CEST, michal.swiatkowski@linux.intel.com wrote:
>> > >On Fri, Apr 12, 2024 at 09:12:18AM +0200, Jiri Pirko wrote:
>> > >> Fri, Apr 12, 2024 at 08:30:49AM CEST, michal.swiatkowski@linux.intel.com wrote:
>> > >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> > 
>> > [...]
>> > 
>> > >> >+static int
>> > >> >+ice_devlink_port_fn_state_get(struct devlink_port *port,
>> > >> >+			      enum devlink_port_fn_state *state,
>> > >> >+			      enum devlink_port_fn_opstate *opstate,
>> > >> >+			      struct netlink_ext_ack *extack)
>> > >> >+{
>> > >> >+	struct ice_dynamic_port *dyn_port;
>> > >> >+
>> > >> >+	dyn_port = ice_devlink_port_to_dyn(port);
>> > >> >+
>> > >> >+	if (dyn_port->active) {
>> > >> >+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>> > >> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
>> > >> 
>> > >> Interesting. This means that you don't distinguish between admin state
>> > >> and operational state. Meaning, when user does activate, you atomically
>> > >> achive the hw attachment and it is ready to go before activation cmd
>> > >> returns, correct? I'm just making sure I understand the code.
>> > >> 
>> > >
>> > >I am setting the dyn_port->active after the activation heppens, so it is
>> > >true, when active is set it is ready to go.
>> > >
>> > >Do you mean that dyn_port->active should be set even before the activation is
>> > >finished? I mean when user only call devlink to active the port?
>> > 
>> > The devlink instance lock is taken the whole time, isn't it?
>> > 
>> 
>> I don't take PF devlink lock here. Only subfunction devlink lock is
>> taken during the initialization of subfunction.
>>
>
>Did you mean that the devlink lock is taken for DEVLINK_CMD_PORT_SET/GET
>command? In this case, I think so, it is for the whole time of the
>command execution.

Yes.



>
>Sorry I probably missed the point.

Np.

>
>> > >
>> > >> 
>> > >> >+	} else {
>> > >> >+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
>> > >> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>> > >> >+	}
>> > >> >+
>> > >> >+	return 0;
>> > >> >+}
>> > >> >+
>> > 
>> > [...]
