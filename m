Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sECeFsXSqmn3XQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 14:12:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCFF2216F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 14:12:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A432681E95;
	Fri,  6 Mar 2026 13:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IyXy5_nOq_eL; Fri,  6 Mar 2026 13:12:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD58B81E28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772802752;
	bh=dXD46sZBbQ0HinTPPSaWF5tUOxdfFWBYFR/OarMz7d8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pbNxKdVTw64rzeXZcyj1LM0hB070/m4GxWLAzXmy8RpZyz+wnD1ctq01US4qKlnnM
	 UF6OP7lgWuz90GVM8dpCSXalxwU1CGZp/CwD1bHqwe5sWE9gUscliNHm2yNJWZ8ddu
	 73Hbne9dCIMvbRYfaP3ivBoIUdm7zNKzzFX/Z1haRT98UJQ2xw1E+UNTDj7ENKoShM
	 VPMc1gxRGsqDGa2JwPdZDylH7N3xc68VYcMXnYlnPzUj7Qh5C1x1MGRDVf4SDgIfOp
	 EpAVkFnPGxo3y6X/QfGALJnft6wiEeJpNzZ1J19bNrMP7BB5vnSbzmXqJzveJKEmKg
	 LzqNkcGpz3P8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD58B81E28;
	Fri,  6 Mar 2026 13:12:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E30CF339
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D488340605
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vMHHeyMB9zbd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 13:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B6DF0404EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6DF0404EF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6DF0404EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 13:12:28 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-504-0lSQtUYCMmyX_xKEYCiUkw-1; Fri, 06 Mar 2026 08:12:26 -0500
X-MC-Unique: 0lSQtUYCMmyX_xKEYCiUkw-1
X-Mimecast-MFC-AGG-ID: 0lSQtUYCMmyX_xKEYCiUkw_1772802745
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-4832c4621c2so99914145e9.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Mar 2026 05:12:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772802745; x=1773407545;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dXD46sZBbQ0HinTPPSaWF5tUOxdfFWBYFR/OarMz7d8=;
 b=MAGiZ7smJ35I9AmBrS4P7D4bUxYFQy3/3b/n1ryMcn/rSBt/yTi4XMrmLdBIyRH+wD
 zRviDZNF6rJ+sLSR1VW16eadUuVxp6njEc1XkwJhSXcHJMJizWT5QsLeYJX5xYuXu9Nv
 bPKSAdG9Eb/CWprRLPkwLDPVf5c9Ic7t2nrrvE0n+SXqov8Gknuhn0Q3ewCBZhKpH6zF
 82aoG6u0U0ZMmuZF7a3jMyjdqhobtNi6JnsyPKHpSamVVIImYD/GWNbomF1PhQQsn9fX
 rmIF7wurcYKYKFaAQ0NifZU0FJzRgXHgRZLBsNngVy+FvJke47ck50kQZJpW6s8xvYQM
 BfaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWU5DrwalE7kJSmJ/OFo3Msg1Avzjnvb1G7YfydWMHEwM4NW94UmZfJ7BHc31FwPBf/pLquSmJjMlEMTyrAQDc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxBiUVkwOiophN2Ow98ORmgTLj5xdl/iN3haluB7/HzF0LShke6
 RcmY4gP2EMzXO6PCnvjWFsWn3AB6+CCA6yZ6YxXXVQ7zPFxSFHSFZ7SH5r63UaSn1M4vi0ARrQb
 aVtom0q3YI4Z5ytgaJJFwmu5w6DA0op7N5qHbggHBips1v4ps/esTpMI6mqWmgWhup9lFXwI=
X-Gm-Gg: ATEYQzwUD8L7UUs7PI/DVIv7Mwk9C9e88faJfkoFsQAiCc5DY82APfI16iJQVZEMqeU
 V8Uxf2VJQhuD5I49AdJ1nxSbTpip1PU3wk96MeRMR0oI5wNZ5/kH0JpNsBLnUyAtfp3sxonfYnb
 ZuQ9IwiCOxHbAS6IINNWZWoVBLNkr9w1+gQ26oKAKTDBveZ/DFBZAVGFPVA7v+MmtZDj0i4Odgy
 y5ac8OTJR2V3HzipYD0G2EEm9AB6Ta1xvtYUxu4mLvcHYIhBZb0Fx4s6RO60ZwzfsYeNrv1Qm9V
 rQjRfDh5gyofT/U1SVifSCzXdULQD9D8ezopdVI2PIQxzKJV4YfrgdcgZNUG45xKE6Vh+sD/GRu
 5HxjCXjqfeJQvBMrAotJd
X-Received: by 2002:a05:600c:c4a5:b0:477:63b5:7148 with SMTP id
 5b1f17b1804b1-485269199a2mr31101345e9.6.1772802744868; 
 Fri, 06 Mar 2026 05:12:24 -0800 (PST)
X-Received: by 2002:a05:600c:c4a5:b0:477:63b5:7148 with SMTP id
 5b1f17b1804b1-485269199a2mr31100855e9.6.1772802744373; 
 Fri, 06 Mar 2026 05:12:24 -0800 (PST)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4851fae00absm110527045e9.4.2026.03.06.05.12.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2026 05:12:23 -0800 (PST)
Message-ID: <76331edf-2963-4527-9f01-80fed3f6d49b@redhat.com>
Date: Fri, 6 Mar 2026 14:12:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: netdev@vger.kernel.org
Cc: jacob.e.keller@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
References: <20260302114025.1017985-1-poros@redhat.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20260302114025.1017985-1-poros@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: cNIOuWtbmnjn1Mai58GDf9FWg2cTd9HTcZ_1tTQgI1M_1772802745
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1772802747;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dXD46sZBbQ0HinTPPSaWF5tUOxdfFWBYFR/OarMz7d8=;
 b=WVVsHr8x783y4Ens2t9RSHUjxyVpzb9KoNliaChV8pDiGDVQLBTC/2p/sgbRXq8S5uTMZQ
 8iqfiW+EgfWtDvekA+PcyAmSiNY+D71kGWkI/6L1KPV8LR/mwSsnwxff0P3R/hcKcZQgUS
 btlIacv8RTXFjPYouNC0zzCgxHUMpGc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=WVVsHr8x
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 0/4] iavf: fix VLAN
 filter state machine races
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
X-Rspamd-Queue-Id: 1CCFF2216F8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

I leveraged Claude Opus 4.6 to develop a stress-test suite with a
primary 'break-it' objective targeting VF stability. The suite focuses
on aggressive edge cases, specifically cyclic VF migration between
network namespaces while VLAN filtering is active a sequence known
to trigger state machine regressions. The following output
demonstrates the failure state on an unpatched iavf driver (prior to
the 'fix VLAN filter state machine races' patch):

echo 8 > /sys/class/net/enp65s0f0np0/device/sriov_numvfs
# ./tools/testing/selftests/drivers/net/iavf_vlan_state.sh
================================================
   iavf VLAN state machine test suite
================================================
   VF1:  enp65s0f0v0 (0000:41:01.0) -> iavf-t1-6502
   VF2:  enp65s0f0v1 (0000:41:01.1) -> iavf-t2-6502
   PF:   enp65s0f0np0 (0000:41:00.0)
   MAX:  8 user VLANs per VF
================================================
   PASS  state: basic add/remove
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   FAIL  state: 8 VLANs add/remove  (only 7 created)
   PASS  state: VLAN persists across down/up
   PASS  state: 5 VLANs persist across down/up
   PASS  state: rapid add/del same VLAN x100
   PASS  state: add during remove (REMOVING race)
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   PASS  state: bulk 8 add then remove
   PASS  state: 20x rapid down/up with VLAN
   PASS  state: add VLAN while down
   PASS  state: remove VLAN while down
   PASS  state: down -> remove -> up
   PASS  state: add VLANs while down, verify all after up
   PASS  state: double add same VLAN (idempotent)
   PASS  state: double remove same VLAN
   PASS  state: interleaved add/remove different VIDs
   PASS  state: remove+re-add loop x50
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   FAIL  state: stress 8 VLANs (fill to max)  (expected 8, got 7)
   PASS  state: VLAN VID 1 (common edge case)
   PASS  state: VLAN VID 4094 (max)
   PASS  state: concurrent VLAN adds (4 parallel)
   PASS  state: concurrent VLAN deletes (4 parallel)
   PASS  state: add/del storm (200 ops, 5 VIDs)
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   FAIL  state: over-limit VLAN rejected, existing survive  (fill: 
expected 8, got 7)
   PASS  reset: VLANs recover after VF PCI FLR
   PASS  reset: 5 VLANs recover after VF PCI FLR
   PASS  reset: rapid VF resets x5 with VLANs
   PASS  reset: VLANs survive PF link flap
   PASS  reset: 5 VLANs survive PF link flap
   PASS  reset: VLANs survive 3x PF link flap
   PASS  reset: VLANs survive PF PCI FLR
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   FAIL  reset: all 8 VLANs recover after VF FLR  (VLAN 107 gone)
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   FAIL  reset: all 8 VLANs survive PF link flap  (VLAN 107 gone)
RTNETLINK answers: Input/output error
Cannot find device "enp65s0f0v0.107"
Cannot find device "enp65s0f0v0.107"
   FAIL  reset: all 8 VLANs survive PF PCI FLR  (VLAN 107 gone)
   PASS  reset: FLR during VLAN add/del (race)
   PASS  reset: VF driver unbind/bind cycle
   PASS  ping: basic VLAN traffic
   PASS  ping: 5 VLANs simultaneously
   PASS  ping: survives VF down/up
   PASS  ping: survives 10x rapid VF flap
   PASS  ping: survives VF PCI FLR
   PASS  ping: survives PF link flap
   PASS  ping: survives PF PCI FLR
   PASS  ping: stable while adding/removing other VLANs
   PASS  ping: all 3 VLANs work after down/up
   PASS  ping: parallel VLAN churn from both VFs
   PASS  ping: VLANs work after rapid add/del churn
   PASS  ping: VLANs survive repeated NS move cycle
   PASS  ping: all VLANs survive PF link flap
   PASS  ping: VLAN isolation (no cross-VLAN leakage)
   PASS  ping: traffic works with spoofchk enabled
   PASS  ping: port VLAN (PF-assigned pvid)
   PASS  dmesg: no call traces / BUGs / stalls

================================================
   PASS 46  |  FAIL 6  |  SKIP 0  |  TOTAL 52
================================================
   RESULT: FAIL  -- check dmesg


The underlying failures stem from a breakdown in state synchronization
between the VF and the PF. This desynchronization prevents the driver
from maintaining a consistent hardware state during rapid configuration
cycles, leading to the observed issues.

...................

Patched kernel:

# echo 8 > /sys/class/net/enp65s0f0np0/device/sriov_numvfs
# ./tools/testing/selftests/drivers/net/iavf_vlan_state.sh
================================================
   iavf VLAN state machine test suite
================================================
   VF1:  enp65s0f0v0 (0000:41:01.0) -> iavf-t1-6573
   VF2:  enp65s0f0v1 (0000:41:01.1) -> iavf-t2-6573
   PF:   enp65s0f0np0 (0000:41:00.0)
   MAX:  8 user VLANs per VF
================================================
   PASS  state: basic add/remove
   PASS  state: 8 VLANs add/remove
   PASS  state: VLAN persists across down/up
   PASS  state: 5 VLANs persist across down/up
   PASS  state: rapid add/del same VLAN x100
   PASS  state: add during remove (REMOVING race)
   PASS  state: bulk 8 add then remove
   PASS  state: 20x rapid down/up with VLAN
   PASS  state: add VLAN while down
   PASS  state: remove VLAN while down
   PASS  state: down -> remove -> up
   PASS  state: add VLANs while down, verify all after up
   PASS  state: double add same VLAN (idempotent)
   PASS  state: double remove same VLAN
   PASS  state: interleaved add/remove different VIDs
   PASS  state: remove+re-add loop x50
   PASS  state: stress 8 VLANs (fill to max)
   PASS  state: VLAN VID 1 (common edge case)
   PASS  state: VLAN VID 4094 (max)
   PASS  state: concurrent VLAN adds (4 parallel)
   PASS  state: concurrent VLAN deletes (4 parallel)
   PASS  state: add/del storm (200 ops, 5 VIDs)
   PASS  state: over-limit VLAN rejected, existing survive
   PASS  reset: VLANs recover after VF PCI FLR
   PASS  reset: 5 VLANs recover after VF PCI FLR
   PASS  reset: rapid VF resets x5 with VLANs
   PASS  reset: VLANs survive PF link flap
   PASS  reset: 5 VLANs survive PF link flap
   PASS  reset: VLANs survive 3x PF link flap
   PASS  reset: VLANs survive PF PCI FLR
   PASS  reset: all 8 VLANs recover after VF FLR
   PASS  reset: all 8 VLANs survive PF link flap
   PASS  reset: all 8 VLANs survive PF PCI FLR
   PASS  reset: FLR during VLAN add/del (race)
   PASS  reset: VF driver unbind/bind cycle
   PASS  ping: basic VLAN traffic
   PASS  ping: 5 VLANs simultaneously
   PASS  ping: survives VF down/up
   PASS  ping: survives 10x rapid VF flap
   PASS  ping: survives VF PCI FLR
   PASS  ping: survives PF link flap
   PASS  ping: survives PF PCI FLR
   PASS  ping: stable while adding/removing other VLANs
   PASS  ping: all 3 VLANs work after down/up
   PASS  ping: parallel VLAN churn from both VFs
   PASS  ping: VLANs work after rapid add/del churn
   PASS  ping: VLANs survive repeated NS move cycle
   PASS  ping: all VLANs survive PF link flap
   PASS  ping: VLAN isolation (no cross-VLAN leakage)
   PASS  ping: traffic works with spoofchk enabled
   PASS  ping: port VLAN (PF-assigned pvid)
   PASS  dmesg: no call traces / BUGs / stalls

================================================
   PASS 52  |  FAIL 0  |  SKIP 0  |  TOTAL 52
================================================
   RESULT: OK

Additionally, interface up/down performance with active VLAN
filtering is significantly improved. The previous bottleneck—a
synchronous VLAN filtering cycle (VF -> PF -> HW -> PF -> VF)
utilizing AdminQ for per-VLAN updates introduced substantial
latency.

Test suite:

https://github.com/torvalds/linux/commit/5c60850c33da80a1c2497fb6bc31f956316197a9 


Regards,

Petr


