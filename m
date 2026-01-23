Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJ2SJ+4qc2kAswAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 09:01:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B197C72203
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 09:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7543607AA;
	Fri, 23 Jan 2026 08:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwH1EIv3VIkz; Fri, 23 Jan 2026 08:01:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAF4E607DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769155305;
	bh=XxEzPXEdWw77sDxj6DEsi0W7qZPCnpvTxUBQhuSSYH0=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=2izHZ57i/SjEeS61MuCC/g6E0I4Darj0rwBkASSqUarvdmiZkeH2ItqM8vVhJJdna
	 zdg3q/uvxdMmDRCuX8t/bLwbRKrUWc2SbJYpDTMNckMT9xk7BNU3gkYwkmmE4a8qu+
	 nwcpU8FNOjfFFtqNjrLRev/x2objuOR34LpSuJoZhgiZvqbN+ZewiSnbvZ94RpSQlh
	 qACSlDli2gEIjPYx8pWKLeVY2KFBR9a6ETGA0qh64z9nqGzpfjmEmRATahwbUfRrPe
	 Pc3RF/oA5oYXYldPFj2ldOT15RhQxt9FOzUy+1SHkn7q6h5W+DIoTaNPLugAE7Nd/4
	 LzDA9cGyIBK3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAF4E607DC;
	Fri, 23 Jan 2026 08:01:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CB43D358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 08:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF1BC409C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 08:01:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xpq62jDQrUNc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 08:01:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112a; helo=mail-yw1-x112a.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFA40409C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFA40409C2
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFA40409C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 08:01:42 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-7942fca0da6so10897557b3.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 00:01:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769155301; cv=none;
 d=google.com; s=arc-20240605;
 b=EnR8QeUVEG7OFcf7dGbYycg4prp/2vAP+6V6aagPkEZWS08pobsWyk+tkCcEkFTdh8
 vZkfMiTi48AWg8NBoia+1SwqGzRDpoV7uamCIxW41aPDpjwhCSg+BW6ghXdNQH6NIs0i
 gFrp294gWljmAQHQOOINER8zoA+z6N6L7jrOLQnMptNEdRuGEFAARIiX3ylgDHQHFvMs
 fb7nRUo7/YJVDtlTHlrM27MQuWlG0dKIpb1CGZWb0RIr+TclE+ScBpKJBSnTWg+4wIbm
 Gi6S7h1gdgS7Qi5G7KKRrc9pdvUDCBMMjG9wDl6ax44WQiMBI2xQNoA2zZsSrsSt7BGV
 hiWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=XxEzPXEdWw77sDxj6DEsi0W7qZPCnpvTxUBQhuSSYH0=;
 fh=jD8I9AeUA+6eUIY5wb35yyTTYZe756izVilGUDe9+V4=;
 b=B7JhZPHO+759UJGki4lzUQQiGOjIQJaIfJ/Q0BNGaJ8v2/zC9iofxfshaYtu14DABA
 NzD1GeLduGU5TWAxMt8GbykRucWLXt9b2u+3TaIHPP7omWlB1H6OgeMeqNAC4nqFr/Gn
 H+lClBsRLTRrc28giEGSdIzpw+MsyYFlMY7LEfuGvUFLR5aGZUOQbYIdzdyS+puQ0jsH
 /ZWs3kkKBp2gZ6bcw4Ia2wz878b9ZwGFyaQ9B+SwLv2bAzZohaIdn/m8Yd3YiL+l+FjD
 1wAIHIff3ucYuFXnJoWZxY4yWRtYZD6s5YXv2OwMcjyC2QyM90JD0HBVE4tGA8VOrhoq
 /EwQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769155301; x=1769760101;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=XxEzPXEdWw77sDxj6DEsi0W7qZPCnpvTxUBQhuSSYH0=;
 b=JYjfFEMDhLQpszijZyli6jb857NzDT29GsM0u3ao6K9lvL2sWfVqdX4nQmyp4vjBd2
 UIo5UEdp1mMb6aX8agaoMg4zU971u8zHK+QR18dCHA9ScGyYcToJbPkazeJnjDaAGEkd
 VmowkBVP8m4b9hBveD6F1am+K+JCI1Vf3oXBtyt0SeAQsCzMT5/XnfsmAmhOjqr9FoDU
 S4fz7hcCMVcYcCNwzjhUXxMCwANIiYTxKv9TsQldUTn0ycCxGVzP0rBJY4jMAJvBYbJH
 b80sKevtzpnUiDH2OTViRsRXxMTpw60U0yD/2FuYTVIaTc9DZ9CQV/8hKAkiGhLuBB8+
 Hs/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgpaySON8NK4LOgqVW3LXhNjOHedILJy0q8Rgr0MJ0+05rDitJiCDK9Hlmj+i5plw5bBo9ze+GjPU3QbMQ+wY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz2hcIlQyAGcOy+aHCDDGNwKaVqCY+TB6nz4DD40KFRu5vRsp72
 UkkUjhQl6ckRiC1NNCvAUxPVr1Xx9YqpB30ldTTA/T3ULeGErK/Q+/bPVOi+FHWQuUy7ed8KUYE
 OYd5WLSR93BUnJu+Nlh+MKz7ncJ+OhwJRdNgUkFXJ
X-Gm-Gg: AZuq6aI3jMspIXbDRgjdoAU0eEZkNarlU0RaEBDnAhX4fWmiVoxmW608Wgt0Q2S5wCf
 QRUOa5jjW/RIr1X3LTeuTcKWm1x+IVP0r8TtLniE9hVjZn0lSR+QhnKsKngLX4lHGEXuvDTu6T0
 x6YuOz9DdlCwCwL1AjSRUm1xlyokg67w6y+rPogGfUc2+iOKuS+v46rr+eheORyYpUIirvx2HuK
 ogX4vNLpQMQSEMilgX3YopK0RdYmbBttI1VCJ6ulc/ZHNccubI97HXW9mjRncGrvn/RU3qi
X-Received: by 2002:a05:690c:22c7:b0:794:35b:af4e with SMTP id
 00721157ae682-794398bd2a7mr19001717b3.1.1769155301214; Fri, 23 Jan 2026
 00:01:41 -0800 (PST)
MIME-Version: 1.0
References: <20260123065806.3858623-1-boolli@google.com>
 <IA3PR11MB8986E9CEBE2CEC78B194DF40E594A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986E9CEBE2CEC78B194DF40E594A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Fri, 23 Jan 2026 00:01:28 -0800
X-Gm-Features: AZwV_Qgew1aO4BNhErlckVjIeXAZaN1uh0mrYp1eWCPHnncTX6MKyTxTP1SLhAY
Message-ID: <CAODvEq7yoXMvhkZhzcF4rgaceCnxCfzgKbSa5+SMVMO1X+XgdQ@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Decotigny <decot@google.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, 
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769155301; x=1769760101; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XxEzPXEdWw77sDxj6DEsi0W7qZPCnpvTxUBQhuSSYH0=;
 b=rCNNvJO8799IHOFBvAAr6nfD3/3igSxC0goNgUnXHEQLi3Ohr46H3YC2H5YtuNyowb
 jvijomR0rhPXYQnNvRlUWrw07JHCtO5T3DsPc0OSGQDqep7Hn/sODkyJetxIJzB5FAF8
 hGCzRLAB77sUn6yqLBjl/dDlwAObqlysH/dgxHJO6nwlVmccACMnTaYZRmFQIZKY+C0w
 SnJ7npTEDA7wiSNNK005UYsrS+ILceJufMWcbsjtXN4oMA/2tzRpJ9OMdqUGJK/PahkL
 SNXXsfckSCK2j4OvQI0PXCLVJbc9ufGBVGaTiQo1RbQddeJ4kp/6P5ExJ7uW5xQVSrYZ
 pvWw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=rCNNvJO8
Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they
 are freed
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.965];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B197C72203
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 11:15=E2=80=AFPM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Li Li via Intel-wired-lan
> > Sent: Friday, January 23, 2026 7:58 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Eric Dumazet
> > <edumazet@google.com>; intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David
> > Decotigny <decot@google.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>; Li
> > Li <boolli@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> > Subject: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after
> > they are freed
> >
> > rss_data->rss_key needs to be nullified after it is freed.
> > Checks like "if (!rss_data->rss_key)" in the code could fail if it is
> > not nullified.
> >
> > Tested: built and booted the kernel.
> >
> Good day ,Li Li
>
> Can you re-spin v3 and mention the reproduction steps (exact bash command=
s)?
> The CALL trace from dmesg also is needed for users/admins to find the fix=
.

Thank you for the review. This patch isn't to fix any kernel panics we
encountered. It is
just to address a discrepancy I observed between the Google idpf and
the upstream idpf
as I was preparing for another patch about to be sent out. So far we
haven't seen this
particular dangling pointer cause any issues yet, but it's still a
good practice to set it to
NULL because there are other places guarded by this pointer being
NULL, and it'd be
great to avoid any race conditions.

>
> Otherwise, fine
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>
> > Fixes: 83f38f210b85 ("idpf: Fix RSS LUT NULL pointer crash on early
> > ethtool operations")
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> > Changes in v2:
> >  - Remove the line to nullify vport->q_vector_idxs as it is not
> >    necessary.
> >
> >  drivers/net/ethernet/intel/idpf/idpf_lib.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > index 131a8121839bd..f63ab58428d2e 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > @@ -1308,6 +1308,7 @@ static struct idpf_vport
> > *idpf_vport_alloc(struct idpf_adapter *adapter,
> >
> >  free_rss_key:
> >       kfree(rss_data->rss_key);
> > +     rss_data->rss_key =3D NULL;
> >  free_vector_idxs:
> >       kfree(vport->q_vector_idxs);
> >  free_vport:
> > --
> > 2.52.0.457.g6b5491de43-goog
>
