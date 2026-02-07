Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NyWKhOrhmlUPwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 04:01:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2960C104BB9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 04:01:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 369A840726;
	Sat,  7 Feb 2026 03:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fRKRoTIe86-d; Sat,  7 Feb 2026 03:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA8004071D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770433295;
	bh=U5urfrHJm1a/Qv3SPJE/Wac1K7BrGxv35FZnEF/PNjQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OAxFfQ6Vt2VnPmEpSSWktlyZZrEpZGLOtw22kcGTnhIjcqo+maY0IlqGxK47dQZ9f
	 qOUbAQqWFKvlRl5d71MfHc0HfQ2FjSrMvaeiTzC+GQ5CjtcoNWz2D3S+w4pJz/hVmt
	 xSVRgjMjCj3qAb6bbDs7JD2GvW5PvsGXcKTu3UyZn5NlF39+ad0nqfgTDLOHy4EheU
	 ajW903IJUt663JZVjJrGkdReWVi0+NbclZlTNwyBns0zdxijvazY1ZGnvGjZE6QjEj
	 PwmiVWWqIghcQaMRv84Gkbynb7mNEe6aDKZI2zMJQJ6JuZMB7GvJzIhaoyfCtdAuzz
	 zqqQ2uazhoS2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA8004071D;
	Sat,  7 Feb 2026 03:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 41749173
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 03:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3265340056
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 03:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6cS0fHoitx8V for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Feb 2026 03:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8D9D54002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D9D54002D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D9D54002D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 03:01:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 984E06001A;
 Sat,  7 Feb 2026 03:01:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82555C116C6;
 Sat,  7 Feb 2026 03:01:30 +0000 (UTC)
Date: Fri, 6 Feb 2026 19:01:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Petr Oros <poros@redhat.com>
Cc: jacob.e.keller@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Stanislav
 Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20260206190129.062cd792@kernel.org>
In-Reply-To: <20260206100426.106082-1-poros@redhat.com>
References: <d60cc9fd-70af-40ea-9023-78bbbf91766f@intel.com>
 <20260206100426.106082-1-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770433291;
 bh=gG61rk2O0dRYFDUOE2SQNbQ8F0SYd+0v0B67KEqFrL8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Fle9I33Q3PwKzZRZ9RJueZu6sYRgp7841WaK/FsCN/nSG1CmmpwhEg7VMf9tSisWi
 HYAyqris5zvmZvIXgDkwgUEfAIX1m32Mxn0AxHXV7L77YT11IYfWVZMtNgCL3QPPfV
 0hvhxb2DDsRPv3jFws/tKvfUGCzf+07kK0SbnAt2TeOE52FXmxv8xNOshlUvJy3tTL
 oUzjNSULridPpLnejkN4U4ogU88m+if4gWKAUc9RZqbP9tQ1ImqPaShV1kwmSKXnCo
 bpIgnt1JTKTaFini4H0BeCfcThYRWAOw0TIdSXEqTe1hLyVifjUhIMu+/v1cu3nL5X
 vvj5mqG5KdDcg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Fle9I33Q
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.858];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2960C104BB9
X-Rspamd-Action: no action

On Fri,  6 Feb 2026 11:04:26 +0100 Petr Oros wrote:
> Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")

This is so much better =F0=9F=91=8D=EF=B8=8F
