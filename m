Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 259215899C7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 11:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B291E408F5;
	Thu,  4 Aug 2022 09:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B291E408F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659604525;
	bh=rVOcnaYSY8zDrpP1dOmJpMfi7deEauXlAksNUAzqLlI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bSEuXApAbbIAjCP2WD0ZgR2VkXZD0wIoh6PQ+9aP4bRmXqXe+ocRBjYxGalqms+Vy
	 mlwMOI9fW1qwXTo73kkaNADmLVQnZYlXeeg3qqOlpE7j2Q/2r11r2d4OYJNuin0i05
	 VK6VnbjMP5KKAX1WrW/aBoUI2PqzTGP4Y1oJwsGBgs/nA6RLOgK0SYoGJ6B1MraruN
	 2EnPAB5nvzrtMhom9q7a6CLWtRtgmzplTPW2iKN5CRltxahXb0cNxccgkAehrsJ2W/
	 9FHYVTq6AC5e1nSZAATNN/lqf8CNrqhW2C9LsRDNUD7m7EhvD0OHAjPW1ANdft96Pr
	 gBDCuKKZX+vyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yyDznv9zu6he; Thu,  4 Aug 2022 09:15:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AD9E4090C;
	Thu,  4 Aug 2022 09:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AD9E4090C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C54941BF576
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 09:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A900760C19
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 09:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A900760C19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t1YsdSKDm2wf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 09:15:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B62E260B4B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B62E260B4B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 09:15:13 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-32-MXzIrsxQNZ6kK2CZULMEPA-1; Thu, 04 Aug 2022 05:15:10 -0400
X-MC-Unique: MXzIrsxQNZ6kK2CZULMEPA-1
Received: by mail-ed1-f71.google.com with SMTP id
 z3-20020a056402274300b0043d4da3b4b5so9166902edd.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Aug 2022 02:15:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=FXCneDCGB5je5eo79Hmbr1tuLulPaVGgkFtXQk818sI=;
 b=tVBqQKnrAXpa0+IdyH7fplLj0XdOI6iHZ61sG6ez5E5x347kICC25ilRz+tJUdcaVk
 FKrfGJaypPuj8fKf4G8bzRkb49LvsW38KtnwX7vQ97oFczuJfKETMD1He/BAV9vVi1//
 v+wFQn1BqjFy3YA5y2l3qfXi9Ki3rJGUpWlsJxrOJdpRA6+NUyAQB8fcEvzW2RSSfd2U
 +GBVERclB0PRufr7BPgOmSli4zPyzzkmq0lUKJ4knBDphLICstbR2WK3rj60QT7MYmRx
 q3L6l8apEAjZC9RAH0vg+17JfUidA9DxDJs/GSs/IuVM1nSSEtzqQPO9+pT4CihsPYuk
 5vFw==
X-Gm-Message-State: ACgBeo06TN7CBqV6bvnYBkoytwlSfaLFmPU80p16jBwzmLKte2yJne5q
 alDxX3baq2XRxf9MQNAyxbOxCWLVmb7Im2yjg+p9FftvEoG4Zl72h14kxHpKAA1GlMqnLW+4Xpt
 kI3CXI70mdOdnfc+ONeh00Gr3+Gv/grf4PpqWQ7UQc+HFaQ==
X-Received: by 2002:a17:907:728d:b0:72f:38d0:b8ae with SMTP id
 dt13-20020a170907728d00b0072f38d0b8aemr749844ejc.30.1659604509728; 
 Thu, 04 Aug 2022 02:15:09 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6o7t2BdOIsaj0coeLmh2ICFdFLJQ4gdRDZpycHbzwU/ir/e0b936g6H1s2I78OaoHDjQXb573RTkCPBMKPPe4=
X-Received: by 2002:a17:907:728d:b0:72f:38d0:b8ae with SMTP id
 dt13-20020a170907728d00b0072f38d0b8aemr749826ejc.30.1659604509437; Thu, 04
 Aug 2022 02:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
 <20220802115142.65176-3-mateusz.palczewski@intel.com>
In-Reply-To: <20220802115142.65176-3-mateusz.palczewski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 4 Aug 2022 11:14:58 +0200
Message-ID: <CADEbmW1mLwFzPJrx-igzpwF141Gb71wgJd9Zm1ur4xPkWa5Hyg@mail.gmail.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1659604512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FXCneDCGB5je5eo79Hmbr1tuLulPaVGgkFtXQk818sI=;
 b=UQGCtWdoSIxkzUmFosHG6dm6m8Wd5H++a15ttJ6PlHlrCpoLZuT0ctWYKvbMqJU6qTcvr+
 Ynk05keJvQhjCXU42iAZpFr+iryZRyt0TXw3GqIfyH4FyEW8QsXDUrSJZ6eMoyuQlu5rIk
 kGpYI4QzRxLL1BSsUTEHnzaQONJ2tws=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UQGCtWdo
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
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
Cc: Ivan Vecera <ivecera@redhat.com>, Slawomir Laba <slawomirx.laba@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============4011078605605469323=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4011078605605469323==
Content-Type: multipart/alternative; boundary="00000000000040d1da05e566c948"

--00000000000040d1da05e566c948
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 2, 2022 at 1:52 PM Mateusz Palczewski <
mateusz.palczewski@intel.com> wrote:

> From: Slawomir Laba <slawomirx.laba@intel.com>
>
> Fix a deadlock introduced by commit
> 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
> due to race condition between iavf_shutdown and iavf_remove, where
> iavf_remove stucks forever in while loop since iavf_shutdown already
> set __IAVF_REMOVE adapter state.
>
> Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been
> set and return if so.
>
> Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in
> remove")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed author
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6357dea93b99..d43e8f12d3ad 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4846,23 +4846,24 @@ static int __maybe_unused iavf_resume(struct
> device *dev_d)
>  static void iavf_remove(struct pci_dev *pdev)
>  {
>         struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
> -       struct net_device *netdev = adapter->netdev;
>         struct iavf_fdir_fltr *fdir, *fdirtmp;
>         struct iavf_vlan_filter *vlf, *vlftmp;
> +       struct iavf_cloud_filter *cf, *cftmp;
>         struct iavf_adv_rss *rss, *rsstmp;
>         struct iavf_mac_filter *f, *ftmp;
> -       struct iavf_cloud_filter *cf, *cftmp;
> -       struct iavf_hw *hw = &adapter->hw;
> +       struct net_device *netdev;
> +       struct iavf_hw *hw;
>         int err;
>
> -       /* When reboot/shutdown is in progress no need to do anything
> -        * as the adapter is already REMOVE state that was set during
> -        * iavf_shutdown() callback.
> -        */
> -       if (adapter->state == __IAVF_REMOVE)
> +       if (!adapter)
> +               return;
>

The check for !adapter cannot work. iavf_pdev_to_adapter(pdev) will never
return NULL. It does:
        return netdev_priv(pci_get_drvdata(pdev));
Even if pci_get_drvdata(pdev) somehow returns NULL (which I don't think it
will, because the driver never resets the drvdata before freeing netdev),
netdev_priv() would make a non-NULL value out of it (it adds the aligned
size of struct net_device to the pointer).

CCing Ivan, who will have more comments about the adapter states.
Michal

+
> +       netdev = adapter->netdev;
> +       hw = &adapter->hw;
> +
> +       if (test_and_set_bit(__IAVF_IN_REMOVE_TASK,
> &adapter->crit_section))
>                 return;
>
> -       set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
>         /* Wait until port initialization is complete.
>          * There are flows where register/unregister netdev may race.
>          */
> --
> 2.27.0
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
>

--00000000000040d1da05e566c948
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 2, 2022 =
at 1:52 PM Mateusz Palczewski &lt;<a href=3D"mailto:mateusz.palczewski@inte=
l.com" target=3D"_blank">mateusz.palczewski@intel.com</a>&gt; wrote:<br></d=
iv><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">From: Slawomir Laba &lt;<a href=3D"mailto:slawomirx.l=
aba@intel.com" target=3D"_blank">slawomirx.laba@intel.com</a>&gt;<br>
<br>
Fix a deadlock introduced by commit<br>
974578017fc1 (&quot;iavf: Add waiting so the port is initialized in remove&=
quot;)<br>
due to race condition between iavf_shutdown and iavf_remove, where<br>
iavf_remove stucks forever in while loop since iavf_shutdown already<br>
set __IAVF_REMOVE adapter state.<br>
<br>
Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been<br>
set and return if so.<br>
<br>
Fixes: 974578017fc1 (&quot;iavf: Add waiting so the port is initialized in =
remove&quot;)<br>
Signed-off-by: Slawomir Laba &lt;<a href=3D"mailto:slawomirx.laba@intel.com=
" target=3D"_blank">slawomirx.laba@intel.com</a>&gt;<br>
Signed-off-by: Mateusz Palczewski &lt;<a href=3D"mailto:mateusz.palczewski@=
intel.com" target=3D"_blank">mateusz.palczewski@intel.com</a>&gt;<br>
---<br>
=C2=A0v2: Fixed author<br>
---<br>
=C2=A0drivers/net/ethernet/intel/iavf/iavf_main.c | 19 ++++++++++---------<=
br>
=C2=A01 file changed, 10 insertions(+), 9 deletions(-)<br>
<br>
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethe=
rnet/intel/iavf/iavf_main.c<br>
index 6357dea93b99..d43e8f12d3ad 100644<br>
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c<br>
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c<br>
@@ -4846,23 +4846,24 @@ static int __maybe_unused iavf_resume(struct device=
 *dev_d)<br>
=C2=A0static void iavf_remove(struct pci_dev *pdev)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct iavf_adapter *adapter =3D iavf_pdev_to_a=
dapter(pdev);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct net_device *netdev =3D adapter-&gt;netde=
v;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct iavf_fdir_fltr *fdir, *fdirtmp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct iavf_vlan_filter *vlf, *vlftmp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iavf_cloud_filter *cf, *cftmp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct iavf_adv_rss *rss, *rsstmp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct iavf_mac_filter *f, *ftmp;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iavf_cloud_filter *cf, *cftmp;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iavf_hw *hw =3D &amp;adapter-&gt;hw;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct net_device *netdev;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iavf_hw *hw;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int err;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/* When reboot/shutdown is in progress no need =
to do anything<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 * as the adapter is already REMOVE state that =
was set during<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 * iavf_shutdown() callback.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (adapter-&gt;state =3D=3D __IAVF_REMOVE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!adapter)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br></blockq=
uote><div><br></div><div>The check for !adapter cannot work. iavf_pdev_to_a=
dapter(pdev) will never return NULL. It does:<br></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 return netdev_priv(pci_get_drvdata(pdev));<br></div><div>Even=
 if pci_get_drvdata(pdev) somehow returns NULL (which I don&#39;t think it =
will, because the driver never resets the drvdata before freeing netdev), n=
etdev_priv() would make a non-NULL value out of it (it adds the aligned siz=
e of struct net_device to the pointer).<br> </div><div><br></div><div>CCing=
 Ivan, who will have more comments about the adapter states.</div><div>Mich=
al</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0netdev =3D adapter-&gt;netdev;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0hw =3D &amp;adapter-&gt;hw;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &am=
p;adapter-&gt;crit_section))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0set_bit(__IAVF_IN_REMOVE_TASK, &amp;adapter-&gt=
;crit_section);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Wait until port initialization is complete.<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* There are flows where register/unregist=
er netdev may race.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-- <br>
2.27.0<br>
<br>
_______________________________________________<br>
Intel-wired-lan mailing list<br>
<a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank">Intel-wired=
-lan@osuosl.org</a><br>
<a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" rel=
=3D"noreferrer" target=3D"_blank">https://lists.osuosl.org/mailman/listinfo=
/intel-wired-lan</a><br>
<br>
</blockquote></div></div>
</div>

--00000000000040d1da05e566c948--


--===============4011078605605469323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4011078605605469323==--

