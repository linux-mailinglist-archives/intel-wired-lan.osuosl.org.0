Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B28A4B27
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 11:11:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F5D940607;
	Mon, 15 Apr 2024 09:11:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOrALAmtQcQd; Mon, 15 Apr 2024 09:11:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45C234060E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713172263;
	bh=d4XjbL6a5/Im8TK1zXqyW0HHwUewiq1K7ne1Tk5toYM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=habtBHa5ftWYd7a9H3MBwtWy+PsmF2SKT2PcicYqD993EoqjwxfveSWB1DVKw2Yqf
	 LVJGYrE5Qr+PJu1neKsBJ6ceIRUqvFXdAlCfp0X52IzJ/66biOBJNbYXzW+AIfMZCr
	 HvVOeepy/dasRG1+srT17DDCd6iQTtC5LWSOEWNbNKIyINXM1GSSMUkoIS8IqQBICb
	 sj7EMaoSql54oXUbF8svhoPd5XfQeo2xWaqZBxyFKhuy1BBqhkvn255VcJxEyMG9pw
	 moHjjsSpPC005pSOttQiKP0yN61aPGUmbojRlDCPIkFOEjM4dfsNfQvi+/0CWbl6LJ
	 T5kMxAUhagGZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45C234060E;
	Mon, 15 Apr 2024 09:11:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB9A41BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 09:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C43F440124
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 09:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ApEfVajN8Xqv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 09:10:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52f; helo=mail-ed1-x52f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6BB40400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BB40400F9
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BB40400F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 09:10:56 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-57020ad438fso1502566a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 02:10:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713172254; x=1713777054;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d4XjbL6a5/Im8TK1zXqyW0HHwUewiq1K7ne1Tk5toYM=;
 b=bDqo/pM984fXmpeDhPgDYEpecKwFKBmczBR6QYGXo/hydn7/KBIK7jdmY+Nq7tw04s
 7YUKx/u+tSR0/7+jpDFNdMj5l47gQ2ccDC/cpuXK8zg3/Rka78+MnOmScGqp/dO23s1j
 L+c3QE5d4O4lzbSV7TKY7jFHeYImV1zYhDSDB2iKqtAsdehHv+cBTGIx2vZGPIdjrY4q
 iYSOR2wNFsxrk5u8PZ2QZbUHxUFocPOLKT+gkKp8ETbwvWCupnzmPdXxtF1mt3d9mOzM
 zAsFtpuycdA+stDri3E2JOWk6XpaW43PTnmJMLtdKSABCA89Zm8yz9AGvAoqujlkk3Ko
 LB3w==
X-Gm-Message-State: AOJu0YxfuJzWcpll2gPMQpwfPYLs2tOQFOZqI94kGegbtaC0nvkIRGBD
 GhjF3bUalbm/GRMq3qzEHaru2YkJrVtvNxp1vQzj9SXK+6taijSAs4agr2Aceno=
X-Google-Smtp-Source: AGHT+IFoB0ypaD1UliUU36N22hJtn0BEz8IsHUYPTfllYjwZT6Ka9HjyF/0E/gkjeav1LS85OdOydQ==
X-Received: by 2002:a50:d78c:0:b0:570:392:aa1a with SMTP id
 w12-20020a50d78c000000b005700392aa1amr6121914edi.7.1713172254337; 
 Mon, 15 Apr 2024 02:10:54 -0700 (PDT)
Received: from localhost (37-48-2-146.nat.epc.tmcz.cz. [37.48.2.146])
 by smtp.gmail.com with ESMTPSA id
 g18-20020a056402091200b0057025ea16f2sm1149069edz.39.2024.04.15.02.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 02:10:53 -0700 (PDT)
Date: Mon, 15 Apr 2024 11:10:50 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZhzvGlDiuaPSEHCX@nanopsycho>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-4-michal.swiatkowski@linux.intel.com>
 <Zhje0mQgQTMXwICb@nanopsycho> <Zhzny769lYYmLUs0@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zhzny769lYYmLUs0@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713172254; x=1713777054;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=d4XjbL6a5/Im8TK1zXqyW0HHwUewiq1K7ne1Tk5toYM=;
 b=zweSW2UGyYqUlnCeTGqfRxl8fNzA/VPSbFkvhvMkKRZpG/7yuMR2S/uAHq86FzxlGB
 mSItPWakJ0JjMF+8SGBReHu3q3BD+Rq+LNSq4xliOe7v0GE0A/Ywh3cPASuKgrPAjQ4N
 iuaNXk4/txwT8ixBHMY+MtxprMfT+KewJc/igjM6bfvDmQVhaBXo8ULae3bpa42Yik9W
 fo0nYk42TN4hV42hYZk1tN1Bvt6mxGKac9zWnWnv2K9KAOSTIbatAoD3xOItOsobhS4G
 B+7pE9Qogt64jyVzM9INgb1ztn+Yj18c30ESbC33uA4XLgo6wnQU+rRTVzGb4mqoFPcN
 ON/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=zweSW2UG
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Apr 15, 2024 at 10:39:39AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Fri, Apr 12, 2024 at 09:12:18AM +0200, Jiri Pirko wrote:
>> Fri, Apr 12, 2024 at 08:30:49AM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>

[...]

>> >+static int
>> >+ice_devlink_port_fn_state_get(struct devlink_port *port,
>> >+			      enum devlink_port_fn_state *state,
>> >+			      enum devlink_port_fn_opstate *opstate,
>> >+			      struct netlink_ext_ack *extack)
>> >+{
>> >+	struct ice_dynamic_port *dyn_port;
>> >+
>> >+	dyn_port = ice_devlink_port_to_dyn(port);
>> >+
>> >+	if (dyn_port->active) {
>> >+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
>> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
>> 
>> Interesting. This means that you don't distinguish between admin state
>> and operational state. Meaning, when user does activate, you atomically
>> achive the hw attachment and it is ready to go before activation cmd
>> returns, correct? I'm just making sure I understand the code.
>> 
>
>I am setting the dyn_port->active after the activation heppens, so it is
>true, when active is set it is ready to go.
>
>Do you mean that dyn_port->active should be set even before the activation is
>finished? I mean when user only call devlink to active the port?

The devlink instance lock is taken the whole time, isn't it?

>
>> 
>> >+	} else {
>> >+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
>> >+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
>> >+	}
>> >+
>> >+	return 0;
>> >+}
>> >+

[...]
