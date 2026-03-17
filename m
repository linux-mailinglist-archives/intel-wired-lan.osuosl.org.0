Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDiqIgTouWncPQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 00:47:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B702B4735
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 00:47:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4115483B7F;
	Tue, 17 Mar 2026 23:47:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voZm7EDLPDLB; Tue, 17 Mar 2026 23:47:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFFB183B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773791231;
	bh=TYnQ9K1Z99UlbHr7eq/pZE+TksjxYKszUFpuakhmm1s=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=Fk+arkNGexLFvkaALJkqBEsGS4kdaiLz66Q5laPMIJdXKbmRYSNxkEjZugk54N/hi
	 GRmkgeQc1wR7eiSmTY7r8JHccsSRiXqEu8fHQmJti1JTR4hMOk7gNpes0qRiuOdHbv
	 cuzFrLQatI52LHcaJOZfwTqEnS3YJjhK1O2Pvd8TbTm92W+OX8f44y/GIgdu4xUY39
	 bkLon9qlpBZsINRXJmT85GyzqsSVAYKCh8dOF0DLfKFkCJPaqwUk5H7frg9+kyon3+
	 1OjiiJc7M+IwB19Gvg41gErihtZeq8hCadjtHcXjQoGvMhvcJUoUkfRoUreIvZcLmd
	 fVLESAGsQ29wA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFFB183B72;
	Tue, 17 Mar 2026 23:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EF369D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 23:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0809406A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 23:47:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EWMNUoxnta-j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 23:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12e; helo=mail-yx1-xb12e.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DEF840693
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DEF840693
Received: from mail-yx1-xb12e.google.com (mail-yx1-xb12e.google.com
 [IPv6:2607:f8b0:4864:20::b12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DEF840693
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 23:47:08 +0000 (UTC)
Received: by mail-yx1-xb12e.google.com with SMTP id
 956f58d0204a3-64ae222d978so227890d50.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773791228; cv=none;
 d=google.com; s=arc-20240605;
 b=EKP+6SmWUgaoWW49Xu24t8SVyYytVH5ZXqBKS6mj3YiOcowTmisHDBYsLjS0C4jxjy
 JlH35VvVjVdL1YHOlfXYd599qL/ouhpcxBIe947WIpSL4DpQA86ymp9zzXwIdeCb6tsx
 EN8THDOeJLwdDcgWrrX0bLEZnVhdyT/1lSK5oKGQ1ou5gUBgF0H5Qux4lxKjsGK4iao6
 GVR96YXKe8wDuGUjQ9oKN4AkxThYxzxfKiIPe5B3CtMquQHBdfNlYt7ebOxh4RFavAc1
 qa6L6786/lRMVeEl5Dfisqv6z9w6r0dWLbhfkeOL6JCxTA6/uoSfXCubB5VAzdkWKuPI
 bZzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=TYnQ9K1Z99UlbHr7eq/pZE+TksjxYKszUFpuakhmm1s=;
 fh=FlEgfaKPftyqF+v3LZ29weqZV0PuS9EMvsXLuWxZXUE=;
 b=OdHSvp5uXrxZuLs61fSEFxx9rma7zbIl2WO4v54C5fPsmWod0tGt52Rtr5iKjSI4/s
 pXnlKXZBRAdAIkijF0Lz95HxEoRT0+RPIhuFmVkV22tTGpJ6+jIKx5IWuI5MdqOg+o6l
 /Nrr0ex+FbSlaeCkjZSjKN435sP/u5pO5yUkUDakgBXmOElUegclWNWBKDFBFpnRLLOm
 km615rYyiNuJS/2wJ44rFqP5PmmXBaI6Zp0ne2TvnTgxlSLFU8YDKkus8JcAkhX8b0CZ
 F0SL778E4HBPdqo47kVKiiwi5BSHJH6dMEkmhCUBln5Iebqxqhu/THa0GtkvtryDnXrh
 o2iQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773791228; x=1774396028;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=TYnQ9K1Z99UlbHr7eq/pZE+TksjxYKszUFpuakhmm1s=;
 b=r9dAwzjkhVuN4krndORhRum7gMUDYVzEw9eyPfx6Wz5HbtvfzVZ0niCo33SZGiPJIp
 YCNe4W6TuhEXd1mKcJZkIe6fJ68MLBulZLM2HP671gRlNSeIJV/uf37GSMt2nqpt/wRF
 Qg6RguxUuLtvCQkv54qP+GvdmL3QgIBCs3Bmi9DpDClUzo/gc9ieK6W32wbMQb9L81+6
 o31GXHwhQFSBj9RlfwEqgWj/i2nrtANAfMxnyMpdMugeOH8Js2Te/EZlOyIsAZ6SePCi
 XmzN+V56AXs3+kE+rxo8d2Nz62W5WnSA2rivwpAA98RUaFKA5j/0cgmj+IpZ4kB/w8Vr
 qEHg==
X-Gm-Message-State: AOJu0YwYTxe3Is5wSJauylrWyB7VEo5km4voeG2k8YaHkOJWU8/HsB4j
 y+jEPcpM0KI0tz7NSeMIM1ipLDYexNZxw7D8LbQ32glVVxrF7gdXf0k09r4NDR0PaDP4FbYYWc+
 rtyTcnc2idpOX38cv92zO75bYBKOHa4tKdQ6gPvMe
X-Gm-Gg: ATEYQzyWh9WOFv0Rm4J1frbdmvp2AwKg7MMIYacKxj8/wmDBLoRZ6anZIglwbz8GJGe
 OR8X52XVemKkjch7AeMnMeyxKtDd3icrqlgsIBQP3vf3zaHSU+GdnVJSYe0oz3B+0vXHmzN3t0Q
 eL3EwJyABgSlg947TdNr3zP/u7OxuBlS2+cyNPbLxJAz/BY/p4OJwQgMkssiu2cKkFPxHGZbgTo
 H+nsX10glXnEf13kTzQPO+4EfAg1P+NbAxjWKGgPnYZjCFWu/KiJOK/3tsVV8SN+7/gROCr+d+6
 9jZtEad8gUgbpjIXt/kngJLpCJ8wi3f0Pg0=
X-Received: by 2002:a05:690e:4492:b0:64c:9fcf:2ad6 with SMTP id
 956f58d0204a3-64e91735a9fmr1320814d50.74.1773791227342; Tue, 17 Mar 2026
 16:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260316232819.6872-2-emil.s.tantilov@intel.com>
In-Reply-To: <20260316232819.6872-2-emil.s.tantilov@intel.com>
Date: Tue, 17 Mar 2026 16:46:55 -0700
X-Gm-Features: AaiRm53EgQN0srwPUlGkyxpZzqDPqm7JMjWgqbwuCg88u6Jwx7G7TAITi-bhaOM
Message-ID: <CAODvEq6xHtbtaV_8D0yxWMrBxNryocoB2fvXfvrN-N47FmPZMw@mail.gmail.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 bigeasy@linutronix.de, clrkwllms@kernel.org, rostedt@goodmis.org, 
 linux-rt-devel@lists.linux.dev, sgzhang@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773791228; x=1774396028; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TYnQ9K1Z99UlbHr7eq/pZE+TksjxYKszUFpuakhmm1s=;
 b=cdIi7UsexrUl5YvhEl2sw04RguVEXa2AMMYxmMyI5AE0YMawqdMRagz9vYyAEbrwdJ
 yKkH/ix0DE6brFsDMGGA5Tp3Zn7IMIeshmUvX5MoL8g9V+hiRLTPqMdorMN12oA+za/i
 kDvY4tDydMOOYnLYQ2E3pNEEO2ugfcuoYwtrAkJu4ANbLRskorYv/gp0/ZqVGvV9S3QB
 ytNzZdtYPq5njjpcVJnhtLb4Z9KGZaXQe172uF0HHHvgEpzU1GF+/7bVgCBctJ7MdnlQ
 y8RP0hGcIr95NtVOBrbhQcmMDWc4ocr4pgIkbYf2NP/rTEGvupdIomSRquE0dhM0XZzz
 uThA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=cdIi7Use
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: improve locking
 around idpf_vc_xn_push_free()
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[boolli@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 19B702B4735
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As discussed in the previous email, I had an minor & optional comment:

Personally, I think the code would read better if we just get rid of
the push_free state and use 2 separate code paths:

release_and_unlock:
idpf_vc_xn_release_bufs(xn);
idpf_vc_xn_unlock(xn);
idpf_vc_xn_push_free(&adapter->vcxn_mngr, xn);
return retval;

only_unlock:
idpf_vc_xn_unlock(xn);
return retval;

But I don't have strong opinions whether or not the suggestion above
is taken, and the patch LGTM.

Thank you Emil!

Reviewed-by: Li Li <boolli@google.com>



On Mon, Mar 16, 2026 at 4:28=E2=80=AFPM Emil Tantilov <emil.s.tantilov@inte=
l.com> wrote:
>
> Refactor the VC logic dealing with transaction accounting where
> both push and pop_free are using the same spinlock free_xn_bm.
> This resolves potential race when setting and clearing the bits
> in the free_xn_bm bitmask.
>
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Reported-by: Ray Zhang <sgzhang@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/ne=
t/ethernet/intel/idpf/idpf_virtchnl.c
> index 113ecfc16dd7..21a6c9d22085 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -401,12 +401,18 @@ struct idpf_vc_xn *idpf_vc_xn_pop_free(struct idpf_=
vc_xn_manager *vcxn_mngr)
>   * idpf_vc_xn_push_free - Push a free transaction to free list
>   * @vcxn_mngr: transaction manager to push to
>   * @xn: transaction to push
> + *
> + * Callers must ensure idpf_vc_xn_release_bufs() has been called (under
> + * idpf_vc_xn_lock) before invoking this function. This function must
> + * be called without holding idpf_vc_xn_lock to avoid nesting a sleepabl=
e
> + * spinlock inside a raw_spinlock on PREEMPT_RT kernels.
>   */
>  static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
>                                  struct idpf_vc_xn *xn)
>  {
> -       idpf_vc_xn_release_bufs(xn);
> +       spin_lock_bh(&vcxn_mngr->xn_bm_lock);
>         set_bit(xn->idx, vcxn_mngr->free_xn_bm);
> +       spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
>  }
>
>  /**
> @@ -428,6 +434,7 @@ ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
>                         const struct idpf_vc_xn_params *params)
>  {
>         const struct kvec *send_buf =3D &params->send_buf;
> +       bool push_free =3D false;
>         struct idpf_vc_xn *xn;
>         ssize_t retval;
>         u16 cookie;
> @@ -514,10 +521,13 @@ ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapte=
r,
>         }
>
>  release_and_unlock:
> -       idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
> +       idpf_vc_xn_release_bufs(xn);
> +       push_free =3D true;
>         /* If we receive a VC reply after here, it will be dropped. */
>  only_unlock:
>         idpf_vc_xn_unlock(xn);
> +       if (push_free)
> +               idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
>
>         return retval;
>  }
> @@ -559,7 +569,7 @@ idpf_vc_xn_forward_async(struct idpf_adapter *adapter=
, struct idpf_vc_xn *xn,
>         }
>
>  release_bufs:
> -       idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
> +       idpf_vc_xn_release_bufs(xn);
>
>         return err;
>  }
> @@ -619,6 +629,7 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter=
,
>         case IDPF_VC_XN_ASYNC:
>                 err =3D idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
>                 idpf_vc_xn_unlock(xn);
> +               idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
>                 return err;
>         default:
>                 dev_err_ratelimited(&adapter->pdev->dev, "Overwriting VC =
reply (op %d)\n",
> --
> 2.37.3
>
