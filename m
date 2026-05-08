Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI9hIldb/mkWpgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 23:53:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1E54FC11A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 23:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 705744213A;
	Fri,  8 May 2026 21:53:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id acc_BIIHRkQ3; Fri,  8 May 2026 21:53:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2BF84213C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778277202;
	bh=8LJWMYWDHAl3U19VhNS8DQWFtOh6xNlapGGlh2A7xGk=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=TfcLpzgUCq+CFUSjl4O8cGL+fU7XEozGZ6j4t4++mNNM/XMjq7N5U+l6sK/DQNZ5f
	 jfSmvlAoj0hR6SCuD93cXMxldKeQWkyBtbCKXyDjQRXzVR4Rd5QkRESOV+VeZbaAMD
	 Z60l8/zeRQAOYMKIESASPcrkrwFTpFd9cZVnTssd8MfsB/pKd9QCFxVos/Dpp6KZbx
	 p6u68iv1327P/WTTqI3icbTNBBbtxMk2BYTDrUVMtnr6XFBkkta4NUEwBY36qn2p/Y
	 hqFkAz6jLEDqmXkHFZhbfLqrdqxwpKK+3YzOKphsgYCUU4mMGBWAfm/QhJ01RHJ8L1
	 PtFfeWjv1o9cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2BF84213C;
	Fri,  8 May 2026 21:53:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 199C4272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 21:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02A7E611F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 21:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N50ou8dqKva6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 21:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b134; helo=mail-yx1-xb134.google.com;
 envelope-from=fred@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02980610FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02980610FA
Received: from mail-yx1-xb134.google.com (mail-yx1-xb134.google.com
 [IPv6:2607:f8b0:4864:20::b134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02980610FA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 21:53:19 +0000 (UTC)
Received: by mail-yx1-xb134.google.com with SMTP id
 956f58d0204a3-651d6347a69so3199592d50.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 May 2026 14:53:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778277199; x=1778881999;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8LJWMYWDHAl3U19VhNS8DQWFtOh6xNlapGGlh2A7xGk=;
 b=OrLU9mCiZsH36kIwtVVGi2aMjz/EhXmGEid6KpC80hd+0xMJExoHByk+vYg82beZ4C
 Uh8QRdcMES+9sscAQoOifzSUIr7WTKQoWc7iC107Gc7mP6VwEjV9JlN9YxgtM7vwUZtN
 /L/RcFJUQFa3aajKAblmWbtepy4sKJLSHj+s/aN3VncqkGLpt7s4pz1EYa3PecKUHKQF
 ZbMV5F4zHtVtN94UdE7xjAk2GOFxW9YjDR5i51IEs4jrm2mMZ+cZCGyKEnGTWgJXKNsG
 kpb+zqiLW4s1ap2QueHkt7mthfxJe6vUNKuuDs78LfcBN1szhRUULw2XGmwYx3rHVBFt
 YqTg==
X-Gm-Message-State: AOJu0YyK6adImZQfdbThJ6CWSG2ujX2R+2tVAnq2DzB/FdKRKO/gvDba
 Xy7Ui4T4qK93fbAuFQ2+2W070rEp+kNyNh9zJA0n9rmOx9/k9Hx66AOfRYFNXoNY4nQ=
X-Gm-Gg: Acq92OEMC35pN1pu4aOBMty+K3MO90v5z5583IzD/DnIo5UfZVEFENKY58hBHVBEEMP
 VV0XBV4vhcBskmSzt5UnRrdqAvts8UMj64AObj+tiuhH1aueStOnIphL+oMt7oiw5AFvgZ1TjWR
 tpUjZbHFaNMYoigXiILP7SGCgFWpUGZQc2cDqy3TMdm7GQLyqvtrqln+FCe5MC+XJZFgTaBFt/O
 mP/RYHkVmuXyzI8iHmn7Mxc0Gyahcum1U3tSWTh+j2phYMO7SAg/3ksOsx49tsHoOH7i3vhWMoE
 ZwDcVYmiXXlao+KRzdy3nn8NLX2RXyMYBebgrrM3d4Mw9K53ObyUWgUF1IALQ6JqJgW9sYbuwhf
 fqxOBvYPXHeDsz9+cbmDmxgYkqMPC7SYBJRNsGJ40PUmvFZ9j+9TZtD9E01nbpMyndo5VRXFXVe
 jw6w==
X-Received: by 2002:a53:d04b:0:20b0:659:1b7d:b127 with SMTP id
 956f58d0204a3-65d7e8ed53dmr5698959d50.47.1778277198654; 
 Fri, 08 May 2026 14:53:18 -0700 (PDT)
Received: from CMGLRV3 ([2a09:bac6:947f:3af::5e:73])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-65d96c0e243sm1373666d50.19.2026.05.08.14.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2026 14:53:18 -0700 (PDT)
Date: Fri, 8 May 2026 16:53:15 -0500
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kernel-team@cloudflare.com" <kernel-team@cloudflare.com>
Message-ID: <af5bS1wiJ7nXDJFu@CMGLRV3>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
 <aft5h-Ygbjjr4uwk@CMGLRV3>
 <MW4PR11MB68644D458DE5A1425589D953803D2@MW4PR11MB6864.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB68644D458DE5A1425589D953803D2@MW4PR11MB6864.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1778277199; x=1778881999;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=8LJWMYWDHAl3U19VhNS8DQWFtOh6xNlapGGlh2A7xGk=;
 b=ZQ2yLmN6/d3O1Es83TO07aaT29PTS2pcJ2fZXzcH4bxVk6nxc2p9xOhbtdP/ob3gZG
 EKIXGqWApI1VDCbi6qA/gv0P0wkszIMrTKmeQ3XoA7QHqMHdWnx26Y00dxddnzep++RV
 /QSmy21i71VUVCoCDOB9ro7exGpSepYxKVKN70JCjfVLrD8y+hjdIMcZvinGzivuJWnf
 CAD4SWz6/Vw7J8lDydVtjS6KrIwos7KXRA9SaQTeQiJJebuCGuuWVJOjHbTGo8sgDcZ+
 r0I3veqcySGy6+XurXNqDGFG0loUtN3I831WAm06rWj1Kv6vbVCmN7qUolZ7/YFaTkdu
 rYLA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=ZQ2yLmN6
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
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
From: Frederick Lawler via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Frederick Lawler <fred@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 4A1E54FC11A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:kernel-team@cloudflare.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[fred@cloudflare.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 11:33:12AM +0000, Temerkhanov, Sergey wrote:
> 
> 
> > I'd like to test this series, but I'm having a hard time backporting to 6.18. Is
> > there any prior work I might need to pull in?
> 
> It sufficed to cherry-pick the commit
> ba694e66889c0ad15b06ae60175e1e958a0691c1 ("ice: remove redundant checks from PTP init")
> from the https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git repository on top
> of the v6.18.28 tag to successfully run 'git am' on the subject series.
> 
> Regards,
> Sergey

Managed to backport to 6.18.27, and ran the reproducer from [1] and
abuse echo "1" | tee /sys/.../reset in a loop with ethtool querying
the device information. Seems OK to me.

[1]: https://lore.kernel.org/all/aIKWoZzEPoa1omlw@CMGLRV3/
Tested-by: Frederick Lawler <fred@cloudflare.com>

Thanks again,
Fred
