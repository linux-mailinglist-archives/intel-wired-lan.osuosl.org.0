Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDC+CJZM/WmUaAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 04:38:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEEA4F0E05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 04:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 576C64141B;
	Fri,  8 May 2026 02:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dWi6-rPmFAYZ; Fri,  8 May 2026 02:38:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2A2241419
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778207890;
	bh=y2xgnUVTSEmtFl7AVjBTgOn4OO+GYRXOx9xXLnwDwhI=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bap3C/5JI2xn6BSs4mKbp3beY0fnNl3sCKs7fWeIjuKUBsurmbaweCQjA3UrcQeEx
	 sjrxu7xysVwpiY/qixo7ZDnDCScFfeuz5606OVkVebF4YczWRWkkFsygblYAcmpntE
	 4yNzvAS4Hc/vjXX+Upf3QMIWZTsH4hghO+RpKYrgZaa9ljRnpZ7YPg3rXjlOI7oGhs
	 U0B7fCVS5PbiFIJNkDeiR1X/VTGAi/+7uBL97PIWAkbZ4abCKbcSqjJnRY5UmOkOt1
	 yctmJPOKCq2Ma6o7TNqN6G5vMz9pa83zA7Mw43Yc0VLjbwMnT7cGv9atJAseXUxYjk
	 +cpyuG5dgODtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2A2241419;
	Fri,  8 May 2026 02:38:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1871385
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 02:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95E6483C6F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 02:38:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iR-lt3rJaezg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 02:38:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9524B83DF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9524B83DF6
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9524B83DF6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 02:38:06 +0000 (UTC)
Received: from mail-yw1-f182.google.com ([209.85.128.182]:52564)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>) id 1wLB6J-000689-M5
 for intel-wired-lan@lists.osuosl.org; Thu, 07 May 2026 19:38:05 -0700
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-7bd810cdc5dso16502567b3.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 May 2026 19:38:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ96Zt/28Klk7bU44sjm8ayjxu6LOHkfjre/Xu81w6r+7oAmHi7U7Wy2A1+kMdlLu72/NNFtsV3jBPw8XrGuct4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRK/ifeetLuJ8Zo7GOFou/HtTGFJGxVdiDIMeQr9G3tO1AM/ni
 ziVCqdTx+qPIVE5r8UfdJDPSU24zHSO4xwi57sLW0ozmi+jbcK+JaSi3Zsu1ZJlmDv3MQP9qy3I
 gPsMWTAf8qRJWb9z12Z1HBufXPQU+pjg=
X-Received: by 2002:a05:690c:e094:b0:7bb:c0f:19d4 with SMTP id
 00721157ae682-7bdf5d7fff7mr116382837b3.4.1778207882943; Thu, 07 May 2026
 19:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260507183843.1457-1-ouster@cs.stanford.edu>
 <379cd3dc-aff5-4fcd-bf9f-4878ae21ee74@intel.com>
In-Reply-To: <379cd3dc-aff5-4fcd-bf9f-4878ae21ee74@intel.com>
From: John Ousterhout <ouster@cs.stanford.edu>
Date: Thu, 7 May 2026 19:37:26 -0700
X-Gmail-Original-Message-ID: <CAGXJAmzqBQha+XRu12ZpLTDBSMgAEANffD2uGKZ+VVdkMk6OVA@mail.gmail.com>
X-Gm-Features: AVHnY4LeXWVde9sR1jld00r7tS8euPOtaMdbiRvSbEKzDRI4GYQW7FInkNAHXv4
Message-ID: <CAGXJAmzqBQha+XRu12ZpLTDBSMgAEANffD2uGKZ+VVdkMk6OVA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: anthony.l.nguyen@intel.com, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, 
 przemyslaw.kitszel@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scan-Signature: e7339ca2e2d71873cd3c16053348112b
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y2xgnUVTSEmtFl7AVjBTgOn4OO+GYRXOx9xXLnwDwhI=; t=1778207886; x=1779071886; 
 b=Jqq19GokzWQ7k53fE4YmsKamMuenQVDO4ia0ic8+yZN+X556ewcbDjMMPD2hUfA7PZ5Fw7vXrCp
 4INBXho1mk7KHb2GZQjx0XDBLbBsqH8Jdq4V5Q+pMC8jD9kzmnJyyH3xTGPQVdgr4YikyfDgQ6uR1
 hnz+LJal3xvAICXRdPeGHBnxKxngsaGmAqMDk9VDDmhh0BsBa5hN4peo1K5W8BEzl4sSLnkqWqjKz
 5q6BF3xo7FvU08zJnWu0TZX1OTPqrXo10ltyOyfcCKFfMlVhq78xPiQmsF/1wdxo4+k1iM3ltTSFS
 TkZeDDEp/tgsPvLwpzKzlLUUHbXrJ6hi+wwQ==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=Jqq19Gok
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: BEEEA4F0E05
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[stanford.edu:email,mail.gmail.com:mid,osuosl.org:dkim];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Correct: this patch only applies to the ice driver before its conversion.

The patch applies to versions 6.18.27 and 6.12.86. I believe the bug
may also be present in 6.6.137, but the code has a slightly different
structure there (the function ice_put_rx_mbuf doesn't yet exist in
that version) so the patch would need to be reworked a bit.

This situation isn't all that rare. It isn't a zero-length packet that
triggers it; it seems to happen if a packet uses every available byte
in a buffer, ending precisely at the end of the buffer. When this
happens, the NIC seems to generate an extra zero-length "buffer". This
happens quite frequently (thousands of times per second in some of my
workloads).

What keeps corruption from happening constantly is that there is only
a problem if the "other half" of the buffer page is still active when
the 0-length buffer is received from the NIC. I suspect that with TCP
this is pretty unlikely: packet buffers get recycled quickly. If the
other half is not in use, then it doesn't matter whether the page gets
"flipped" while processing the 0-length buffer. I ran into this
problem because I was testing Homa under conditions that caused some
packet buffers to stay alive for longer periods of time.

-John-


On Thu, May 7, 2026 at 3:11=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.c=
om> wrote:
>
> On 5/7/2026 11:38 AM, John Ousterhout wrote:
> > Note: major revisions to the ice driver make this patch irrelevant
> > for recent versions. It applies to longterm stable versions
> > 6.18.27 and 6.12.86; it also seems relevant for 6.6.137, but would
> > need modifications for that version. I have not examined earlier
> > versions
> >
>
> From this description I take it this only applies to the ice driver
> prior to its conversion to page pool?
>
> In that case, I think you need to Cc: stable@vger.kernel.org and include
> the relevant versions you intend to target.
>
> I think this case is "unique" since there would not be an upstream
> equivalent patch. But that is merely because we removed the faulty code
> before it could be fixed.
>
> I'm not 100% sure whta method to follow since typical stable rules don't
> really like taking patches that don't apply to mainline...
>
> Even with it being somewhat rare to get 0 size packet, it is not
> impossible and packet corruption is a Big(TM) deal.
>
> Thanks,
> Jake
>
> > Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx.c | 23 ++++++++++++++++++++---
> >  1 file changed, 20 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/et=
hernet/intel/ice/ice_txrx.c
> > index 51c459a3e722..081c7a7392b7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -1215,6 +1215,13 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *=
rx_ring, struct xdp_buff *xdp,
> >               xdp_frags =3D xdp_get_shared_info_from_buff(xdp)->nr_frag=
s;
> >
> >       while (idx !=3D ntc) {
> > +             union ice_32b_rx_flex_desc *rx_desc;
> > +             unsigned int size;
> > +
> > +             rx_desc =3D ICE_RX_DESC(rx_ring, idx);
> > +             size =3D le16_to_cpu(rx_desc->wb.pkt_len) &
> > +                    ICE_RX_FLX_DESC_PKT_LEN_M;
> > +
> >               buf =3D &rx_ring->rx_buf[idx];
> >               if (++idx =3D=3D cnt)
> >                       idx =3D 0;
> > @@ -1224,10 +1231,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring =
*rx_ring, struct xdp_buff *xdp,
> >                * To do this, only adjust pagecnt_bias for fragments up =
to
> >                * the total remaining after the XDP program has run.
> >                */
> > -             if (verdict !=3D ICE_XDP_CONSUMED)
> > -                     ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > -             else if (i++ <=3D xdp_frags)
> > +             if (verdict !=3D ICE_XDP_CONSUMED) {
> > +                     /* Don't "flip" the page if size is 0: in this ca=
se
> > +                      * the data in the current half will not be used =
so
> > +                      * it's OK to reuse that half. And, since the bia=
s
> > +                      * didn't get decremented for this half, the page=
 can
> > +                      * be returned to the NIC even if the other half =
is
> > +                      * still in use, so flipping the page could cause
> > +                      * live packet data to be overwritten.
> > +                      */
> > +                     if (size !=3D 0)
> > +                             ice_rx_buf_adjust_pg_offset(buf, xdp->fra=
me_sz);
> > +             } else if (i++ <=3D xdp_frags) {
> >                       buf->pagecnt_bias++;
> > +             }
> >
> >               ice_put_rx_buf(rx_ring, buf);
> >       }
>
