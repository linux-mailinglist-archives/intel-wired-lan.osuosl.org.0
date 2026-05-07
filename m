Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LdCOqYL/WnsWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:01:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC1C4EF89F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0CF183D51;
	Thu,  7 May 2026 22:01:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0YAGOoqi_yp; Thu,  7 May 2026 22:01:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30A0183D56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778191261;
	bh=G37HFgm7Wm0uDxEqURhP8uzSTF/Du1ny+lZrdRdw1aA=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AeIzBk/FnZjwDwUutkRRWqJEdCI7rOzDMPCJ6+e/A46ihT7m4SRaQ/BviX2FL+SdH
	 ts25rsM0Doo+HjWTtCPA0Bw/OwY8Y8T22IaILU6WACJDWRmRK3HNJC3pPdlA+NIjHW
	 +v+/bX2cfAsje0QXIFHaEpV/ws4T3F6aD2+0B1BrhYuY89rI7ZiobKUT2kYeKX6yaE
	 zRCcZrQLUkZzbVbRM6Xb3qY7sieeRf5TjSv/rPyPLsSSMNJaiKxGN6aefPRA+bZ50n
	 c1mRGhZQErt0v+UB1BFEOkF+pZUn89NmusP5Owgqh1wtBTfaoh80tP9HE7CXKeCFKk
	 fCTA7MyzhxRKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30A0183D56;
	Thu,  7 May 2026 22:01:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DBEA2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 18:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23CAC40B95
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 18:25:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hAHYMHIiTwtC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 18:25:27 +0000 (UTC)
X-Greylist: delayed 770 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 May 2026 18:25:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 298D840B80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 298D840B80
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 298D840B80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 18:25:26 +0000 (UTC)
Received: from mail-yw1-f176.google.com ([209.85.128.176]:48374)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>) id 1wL3PY-0004Rp-Fw
 for intel-wired-lan@lists.osuosl.org; Thu, 07 May 2026 11:25:26 -0700
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-7bd9f61458eso9644247b3.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 May 2026 11:25:24 -0700 (PDT)
X-Gm-Message-State: AOJu0Yw4A/0ZlTFnfnCBxYsjP6w8P47hoj/dlGYdpasiS9K9K9lg28ua
 cEZ3+ec88zpJUF5AVenGfLyMX8Xa8pXcKHIQleQGgtARvqQrJzaKPvMHJpoaG9PAD1CNB9Fj3GE
 44WGGu4ao9VwPXqoE81SU3IWiWWuv3iY=
X-Received: by 2002:a05:690c:9d:b0:7bd:5af0:3bed with SMTP id
 00721157ae682-7bdf5dff7abmr99460607b3.21.1778178323677; Thu, 07 May 2026
 11:25:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260507181208.1322-1-ouster@cs.stanford.edu>
In-Reply-To: <20260507181208.1322-1-ouster@cs.stanford.edu>
From: John Ousterhout <ouster@cs.stanford.edu>
Date: Thu, 7 May 2026 11:24:46 -0700
X-Gmail-Original-Message-ID: <CAGXJAmxJyU0jSquUQQcy7HWDDr1b8nfJn7Qa+7NY69C_8r9Kyg@mail.gmail.com>
X-Gm-Features: AVHnY4JJFktqRr4juhFXJpMb1GnE6EXahyo_ovDrJ2JgUcOsOEhE7puW_R8I41s
Message-ID: <CAGXJAmxJyU0jSquUQQcy7HWDDr1b8nfJn7Qa+7NY69C_8r9Kyg@mail.gmail.com>
To: anthony.l.nguyen@intel.com
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com, 
 netdev@vger.kernel.org
Content-Type: multipart/alternative; boundary="0000000000005487d906513e670c"
X-Scan-Signature: 6df4ed7d0fbd8bd08bb7d83a91bc0f04
X-Mailman-Approved-At: Thu, 07 May 2026 22:00:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Type:Cc:To:Subject:Message-ID:Date:
 From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G37HFgm7Wm0uDxEqURhP8uzSTF/Du1ny+lZrdRdw1aA=; t=1778178327; x=1779042327; 
 b=kKpp1qfv7PupufLNuOuZ6m5U0KF50ur6/qbordFW3fN03ju6Hx17eCyN9+5AZzGMlNskSfnBwu2
 ZNA8K2eVVifXxKUZY+xt0FNIljIKm5I+oX0NiA+bL9s/lT9WH54XSv5UxWfhLdby74jGAPDxBd3Yt
 uNufpT9voDCxMAhgkMUaD1dsiCXUOB6ZQHj1OpA6O7DngXMJfwV6m50fLQ19Ath4svDhKIDf/bSMO
 uMcNwCL25azO2JVumf1s5z3uQcxhanY8k5SHQT+975jrU1MbJXunxEyey+qm7rO1gvCFUOmS6sf53
 C2mkj6M/5312z5HUES3PFsYZtGZog62ykCzQ==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=kKpp1qfv
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix packet corruption due to
 extraneous page flip
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
X-Rspamd-Queue-Id: 5CC1C4EF89F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

--0000000000005487d906513e670c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Apologies... this patch is incomplete so please ignore. I will resubmit a
complete patch shortly.

-John-

On Thu, May 7, 2026 at 11:12=E2=80=AFAM John Ousterhout <ouster@cs.stanford=
.edu>
wrote:

> Consider the following sequence of events:
> * The bottom half of a buffer page is filled with data from
>   packet A. The page has a net reference count (reference count
>   - bias) of 1. The page is returned to the NIC, flipped to
>   use the top half.
> * Before the reference on the page is released, the NIC returns
>   the page with no data in it ('size' is zero in ice_clean_rx_irq).
>   In this case the bias does not get decremented. The page still
>   has a net reference count of 1, so it gets returned to the NIC.
>   However, ice_put_rx_mbuf flipped the page so that the bottom
>   half is active.
> * If the NIC stores another packet in the page before packet A
>   has released its reference, the data in packet A will be
>   overwritten with data from the new packet.
> The fix is for ice_put_rx_mbuf not to flip pages that have a
> size of 0.
>
> Note: major revisions to the ice driver make this patch irrelevant
> for recent versions. It applies to longterm stable versions
> 6.18.27 and 6.12.86; it also seems relevant for 6.6.137, but would
> need modifications for that version. I have not examined earlier
> versions
>
> Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 51c459a3e722..371e6db3c272 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1215,6 +1215,9 @@ static void ice_put_rx_mbuf(struct ice_rx_ring
> *rx_ring, struct xdp_buff *xdp,
>                 xdp_frags =3D xdp_get_shared_info_from_buff(xdp)->nr_frag=
s;
>
>         while (idx !=3D ntc) {
> +               union ice_32b_rx_flex_desc *rx_desc;
> +               unsigned int size;
> +
>                 buf =3D &rx_ring->rx_buf[idx];
>                 if (++idx =3D=3D cnt)
>                         idx =3D 0;
> @@ -1224,10 +1227,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring
> *rx_ring, struct xdp_buff *xdp,
>                  * To do this, only adjust pagecnt_bias for fragments up =
to
>                  * the total remaining after the XDP program has run.
>                  */
> -               if (verdict !=3D ICE_XDP_CONSUMED)
> -                       ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -               else if (i++ <=3D xdp_frags)
> +               if (verdict !=3D ICE_XDP_CONSUMED) {
> +                       /* Don't "flip" the page if size is 0: in this ca=
se
> +                        * the data in the current half will not be used =
so
> +                        * it's OK to reuse that half. And, since the bia=
s
> +                        * didn't get decremented for this half, the page
> can
> +                        * be returned to the NIC even if the other half =
is
> +                        * still in use, so flipping the page could cause
> +                        * live packet data to be overwritten.
> +                        */
> +                       if (size !=3D 0)
> +                               ice_rx_buf_adjust_pg_offset(buf,
> xdp->frame_sz);
> +               } else if (i++ <=3D xdp_frags) {
>                         buf->pagecnt_bias++;
> +               }
>
>                 ice_put_rx_buf(rx_ring, buf);
>         }
> --
> 2.43.0
>
>

--0000000000005487d906513e670c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Apologies... this patch is incomplete so please ignore. I =
will resubmit a complete patch shortly.<div><br></div><div>-John-</div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, May 7, 2026 at 11:12=E2=80=AFAM John Ousterhout &=
lt;<a href=3D"mailto:ouster@cs.stanford.edu">ouster@cs.stanford.edu</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Consider=
 the following sequence of events:<br>
* The bottom half of a buffer page is filled with data from<br>
=C2=A0 packet A. The page has a net reference count (reference count<br>
=C2=A0 - bias) of 1. The page is returned to the NIC, flipped to<br>
=C2=A0 use the top half.<br>
* Before the reference on the page is released, the NIC returns<br>
=C2=A0 the page with no data in it (&#39;size&#39; is zero in ice_clean_rx_=
irq).<br>
=C2=A0 In this case the bias does not get decremented. The page still<br>
=C2=A0 has a net reference count of 1, so it gets returned to the NIC.<br>
=C2=A0 However, ice_put_rx_mbuf flipped the page so that the bottom<br>
=C2=A0 half is active.<br>
* If the NIC stores another packet in the page before packet A<br>
=C2=A0 has released its reference, the data in packet A will be<br>
=C2=A0 overwritten with data from the new packet.<br>
The fix is for ice_put_rx_mbuf not to flip pages that have a<br>
size of 0.<br>
<br>
Note: major revisions to the ice driver make this patch irrelevant<br>
for recent versions. It applies to longterm stable versions<br>
6.18.27 and 6.12.86; it also seems relevant for 6.6.137, but would<br>
need modifications for that version. I have not examined earlier<br>
versions<br>
<br>
Signed-off-by: John Ousterhout &lt;<a href=3D"mailto:ouster@cs.stanford.edu=
" target=3D"_blank">ouster@cs.stanford.edu</a>&gt;<br>
---<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++++++++++++++---<br=
>
=C2=A01 file changed, 16 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethern=
et/intel/ice/ice_txrx.c<br>
index 51c459a3e722..371e6db3c272 100644<br>
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c<br>
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c<br>
@@ -1215,6 +1215,9 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ri=
ng, struct xdp_buff *xdp,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xdp_frags =3D xdp_g=
et_shared_info_from_buff(xdp)-&gt;nr_frags;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 while (idx !=3D ntc) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0union ice_32b_rx_fl=
ex_desc *rx_desc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int size;<=
br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf =3D &amp;rx_rin=
g-&gt;rx_buf[idx];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (++idx =3D=3D cn=
t)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 idx =3D 0;<br>
@@ -1224,10 +1227,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_=
ring, struct xdp_buff *xdp,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* To do this,=
 only adjust pagecnt_bias for fragments up to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* the total r=
emaining after the XDP program has run.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (verdict !=3D IC=
E_XDP_CONSUMED)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ice_rx_buf_adjust_pg_offset(buf, xdp-&gt;frame_sz);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (i++ &lt;=
=3D xdp_frags)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (verdict !=3D IC=
E_XDP_CONSUMED) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0/* Don&#39;t &quot;flip&quot; the page if size is 0: in this case=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 * the data in the current half will not be used so<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 * it&#39;s OK to reuse that half. And, since the bias<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 * didn&#39;t get decremented for this half, the page can<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 * be returned to the NIC even if the other half is<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 * still in use, so flipping the page could cause<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 * live packet data to be overwritten.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (size !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ice_rx_buf_adjust_pg_offset(buf, xdp-=
&gt;frame_sz);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (i++ &lt;=
=3D xdp_frags) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 buf-&gt;pagecnt_bias++;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ice_put_rx_buf(rx_r=
ing, buf);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-- <br>
2.43.0<br>
<br>
</blockquote></div>

--0000000000005487d906513e670c--
