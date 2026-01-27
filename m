Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aG8lAw3qeGmHtwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 17:38:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 754A897DA2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 17:38:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B232E405B9;
	Tue, 27 Jan 2026 16:38:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvqeaJvqq24m; Tue, 27 Jan 2026 16:38:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31D4F40663
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769531914;
	bh=kL96nXAEiZdouPMV9c7TqdKeCACwqohru8JEmnEYS0c=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=tYUjqCd7qnSBQRuBgIlM39nGu94atkUno9JS9GgXEfVXduPyM1Ky9oiouDSqe/WNs
	 RaFD3Umzx5UNzz0QOf5tMsIJatGkgOizSPRzcsQj+stXrlm/g6dlVw/SV5tMveKpRV
	 ou+jgJPFR0+I0/pbl7LAzU2rNNvLmNERoNRZK37TdRuU9uqa1d5RNwl8yPPZ0PysQJ
	 ls7uvH+nBZwNvRymHz/0EX3x9gG3O4N9N4eCAq60cbewnsYh1wcVLLFVV4nLDXKzFp
	 5E8QHY5F/4p1hC/Y3miOJ6L60c7QQWlMTeOuCGoI1TmoA/h1MbdL1IK0wo5CMpONQd
	 shylk2TXk4vwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31D4F40663;
	Tue, 27 Jan 2026 16:38:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C8B2F118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 16:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE4E261039
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 16:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PAPWlDCwJ5GA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 16:38:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82b; helo=mail-qt1-x82b.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DC33460FEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC33460FEC
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC33460FEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 16:38:30 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id
 d75a77b69052e-501506f448bso36521741cf.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:38:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769531909; cv=none;
 d=google.com; s=arc-20240605;
 b=ldqYZtlPs0bUwJ+tQYzTbEa73IlfSVjp5VdIwCKgJswOUPmXRv+6kI31RatXNolhFS
 +TgBQzcarWaW7wsirl6I8ToWVHuVu9FCOAiO2pUVqN/oevxxnrQZEnW37zKr7rGg/kY7
 LLWU53efYgtmavI+nImvuRu6NIfj/xdTP/RxKJeyMl50BfI0nIsgKJCJynFA4f9bvJgE
 ppDUNA4Rcqh3uw2DfklOFepzyKH/mWxDtFnUYsoyQTlpJi+cSTGrghe3LVU7Z6HsgN3k
 BLIpjnLj0rb1KUE8sH5MWxOFjYWvRdVHs7pnMkf6HKo/BHKRNUIybe3B/is0QFjuCLj9
 Tv6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=kL96nXAEiZdouPMV9c7TqdKeCACwqohru8JEmnEYS0c=;
 fh=Ezaw3u6fEgmcKm4JTeyfG9cYCmIapL97fHPIAW2oIwE=;
 b=DH8WniSjMME1BncoROkQkiJgJH27BZW/g/LwS6A2vtkuZbSWF2glnBJJRd8WqiEPgJ
 gDy6am6+r3fAyRrXmy53DXX1hr8jwObyV6ECSKoa+Ic5Gjl+qegjiXE2iDhb71GC+D/h
 TgqQ5Ty6RymPyx6b4bqqgevcgmG9W0+/i3nfJOHy8/GwvolX7BHgv22O3LQY4vNlQRdh
 a5uQ7HC080SKx1SEDpWBLcDPsofRxJFqwIpmnDD+4G6QasMnBIb3Li/+sl8vw1dsPqbc
 E43iBjdR99+3xkG9oHzgbK8V6hjdfrXNyxM467WufTlgZuhJWd2Tb2NeHfQP0lehqeNe
 THeQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769531909; x=1770136709;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kL96nXAEiZdouPMV9c7TqdKeCACwqohru8JEmnEYS0c=;
 b=NUthh5cdfgYh73ZLb9L7D5FGxRwDL4/oM+9hNDVpx0nS9lAl9O5Ug8oRlIT0k9D9Wf
 PSWq/SAdjEkTyWVwPW9L+47pfhR/tMZDuOVK6X9r11Tf0F2P7+hVKy0iQOQXO+cEwIOz
 2nMDKBNCHqW8byz+NPPgVXZNLV5uVb0XETJ7Kcly7jl5QeIzTRdtDFR+dmO+xLeZ3gKc
 vkKrOnQUGzNpELn72AkzcEvMZI8XcJAZWJZKcGxUsJJCL+MCpfWHGbx++bxG9qtfz5Ly
 RH54+RmZLqMYiGAmfKespU4T3ygKfJMeRcth10T7/xmZ7iI0wQk/Nmxr5kQgfm0iQk61
 PIDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWirDfjVyk5V2eqOkf83yDYBLGpMHoQwfHA7jkQPFzZVkUY1woQJ9byYYv46mpjz/yv0vXoUQbredGdr7wRp6k=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzdtVV1vOk7Sw3dUj5dQ8nILH0gVIjvcUxpFMchESamzNNhi56r
 SM3NXJiRUgcrML8F56dOF5F2I5kk4k3xtlo/ZyBBuYfhLm9QmXVandVsjOhAzWXjF7U/3DMb1Bz
 H+Q4+FYJpWGmaX2/nfkvEmdn5s+0HpYJICBJb5VEQ
X-Gm-Gg: AZuq6aKknq+6HGa7tnWnsTqzLrrnZbqFX4LYRvBeZ9O4MV7NO4dcraVpq5aLCk9a0mR
 cH6FPy8hpX4JIUEul3euczoYCxtTbJCugIFpUQRahbSS/z4TxAUSMk/PATQgFZmtX1M2YGSybRH
 iRhmwlCL8CMJnCjEvJoH8ytwzG6i8W0otT6vLE7bEKIxoMDFpGXYJ74Spk3TA3T0/I6pqbxMk4V
 JNfLWyH2K3qpgSIiEN6tFw3zyxcrtwRfM7cG60mG9vrgCpK44ZPoaeqxbdkZMKEoMmO+co=
X-Received: by 2002:ac8:5dd1:0:b0:4ee:2352:1bb2 with SMTP id
 d75a77b69052e-5032f74b38dmr26711201cf.11.1769531909141; Tue, 27 Jan 2026
 08:38:29 -0800 (PST)
MIME-Version: 1.0
References: <20260126215600.3387171-1-brianvv@google.com>
In-Reply-To: <20260126215600.3387171-1-brianvv@google.com>
Date: Tue, 27 Jan 2026 17:38:16 +0100
X-Gm-Features: AZwV_QjhIhpxeKUJvscd4k--3JPHyzfLDcHYRzyDNv5IO3bTmn-ulVh-ULL49RQ
Message-ID: <CANn89i+ioEJFnZF3B36xGXcCPgtiLevZOs9pncXhgLKb80sm_g@mail.gmail.com>
To: Brian Vazquez <brianvv@google.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, 
 David Decotigny <decot@google.com>, Li Li <boolli@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Brett Creeley <brett.creeley@amd.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769531909; x=1770136709; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kL96nXAEiZdouPMV9c7TqdKeCACwqohru8JEmnEYS0c=;
 b=KVuqNJeWXMOO7UD4ht/v1JUV2fPCIcb5hI6bvgWUWIylmQufvMn4kG/FojkKLS/Bv3
 Ywvzv/mSsQc8OOdY9O1EvIXFkGK6ulbs+P5Wc/SDNn+a3AVa4mbagiTzqua/WwAFEaqU
 nEEJPOOE9+2OpzzFzCcAXwfYagGl8QLDuGnFycgTS+lukKQiy6vnJWQ133V8bM4rBe6+
 iPurYwFds5P+hONQn2nInGnvQVta2oHQ0vfa5yuHywhqPeyrh8k6g953K5qT1WaNOH20
 D8SDsZsX+cUkvFWAqhAMNdKSRhKLQi9DN5U7LcJtxuKe0z/WUKisCq1CBJRaPv2ElvTD
 iYpg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=KVuqNJeW
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v3] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
From: Eric Dumazet via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,davemloft.net,kernel.org,redhat.com,lists.osuosl.org,google.com,vger.kernel.org,amd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid];
	HAS_REPLYTO(0.00)[edumazet@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 754A897DA2
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 10:56=E2=80=AFPM Brian Vazquez <brianvv@google.com>=
 wrote:
>
> The code uses the vidx for the IRQ name but that doesn't match ethtool
> reporting nor netdev naming, this makes it hard to tune the device and
> associate queues with IRQs. Sequentially requesting irqs starting from
> '0' makes the output consistent.
>
> This commit changes the interrupt numbering but preserves the name
> format, maintaining ABI compatibility. Existing tools relying on the old
> numbering are already non-functional, as they lack a useful correlation
> to the interrupts.
>

Reviewed-by: Eric Dumazet <edumazet@google.com>
