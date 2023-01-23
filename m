Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB55678B97
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 00:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B0D98206B;
	Mon, 23 Jan 2023 23:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B0D98206B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674514907;
	bh=BI8QpBcbUSSqBvL7rsJSNppumW7fN94BbLHXzALfQig=;
	h=From:To:In-reply-to:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OHTS+yDQJRCvHSgaczsEm5iNOevRTPjfLR49/5VSA1uzx/5/TsfOBW/zjVM4EIeGY
	 vStgB++zYBahLoWe28JabUmU62O/ly0jWkKHh04Tntw3K4YB5Pd9k0bspJDu3+SnL4
	 z4jWjUbXhF6FuFiTpeT7cp67i4JivRfdiZu/4ulFdlkADQkyeDFkneow8Ug/kbJLf3
	 lwC7n+MK8NFhZXyYnqEID9Rc4om963MF/oeW/BUOi42mvsdjjH9ZNg7OrwtNK3HgaH
	 a0xhs+HEgPd1LiRf3hSac3pCI4otJoDbHIIqxFSRj1DUhx6+iVeqdvvuE+Pfss+G5x
	 SdbFYh4yCnU/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A2lbTaTOsvw2; Mon, 23 Jan 2023 23:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6961481FFE;
	Mon, 23 Jan 2023 23:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6961481FFE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22DEC1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07E0A81FFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07E0A81FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id woWoVKxSfdBp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 23:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C757A81FF4
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C757A81FF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:01:40 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6A50E3F761
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 23:01:35 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 y8-20020a170902b48800b00192a600df83so7970447plr.15
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 15:01:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ws4I49gzal9OMpseAqlgTMxeS+K4PzsbLrV3ypXSgOQ=;
 b=rXfMc64kvdGnqHkVmSbD27Aexal8Bk9a7g4E57wCyUNw2u2JP0vj57VcWl0ATib67d
 AcJ+RPjt3Uc7hJeO6h/GZ/HeLHRaTeL8iknp4CBo+p9yCEe5dHLmUabEUOKYFfMm1Ti0
 s6BlEgU4TBJ9Q11CMsGOxy89Z+WfkEnOHeE+r4ZYos6/rn/B7XuJMiQiJ2FhL9ypG0JL
 3UNtrnc3JyZ2xDrzVDlN6/kKgP3ttvQmvHjAHdlczfDP+cipv11ELYLH2F9xBDhzG2Qq
 398hMXBu+mw+rxpJp2W8FaW8i4tEWYUz9DADrHfatu8Zs8Pg2sTY5VJhtvTRJvtCHxJ8
 i6lw==
X-Gm-Message-State: AFqh2kqrzQb5EUkhgCWiTemhIV+pS2uI1HurSWPY7N7GJPPxL7wWvoNo
 2Ot+Qmz0sirD476y8+TjW6ijYWcCY3ts1oEVtRHLkoZOuTlKzi8tWJYaxdKFIwAeGFrOvvhJEfP
 yATRd65Vx+4tU/B6eitFWjO7q13j9yguu/oPhol1uBgoguq0=
X-Received: by 2002:a62:ab02:0:b0:58d:982a:f1ed with SMTP id
 p2-20020a62ab02000000b0058d982af1edmr24276300pff.27.1674514894086; 
 Mon, 23 Jan 2023 15:01:34 -0800 (PST)
X-Google-Smtp-Source: AMrXdXv06FZ22qYDSbiHlRRzdN+ym7mY/jj4yLHKaDeEBtmszT7tu35ck+5fnK0SVdJqtyl59pVEFw==
X-Received: by 2002:a62:ab02:0:b0:58d:982a:f1ed with SMTP id
 p2-20020a62ab02000000b0058d982af1edmr24276280pff.27.1674514893770; 
 Mon, 23 Jan 2023 15:01:33 -0800 (PST)
Received: from famine.localdomain ([50.125.80.253])
 by smtp.gmail.com with ESMTPSA id
 w1-20020aa79541000000b00580fb018e4bsm96558pfq.211.2023.01.23.15.01.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Jan 2023 15:01:33 -0800 (PST)
Received: by famine.localdomain (Postfix, from userid 1000)
 id D1F24604E3; Mon, 23 Jan 2023 15:01:32 -0800 (PST)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id C37019FB5C;
 Mon, 23 Jan 2023 15:01:32 -0800 (PST)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Leon Romanovsky <leon@kernel.org>
In-reply-to: <d563de401d6fdc1c52959300eebb2bbb27c6c181.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
 <d563de401d6fdc1c52959300eebb2bbb27c6c181.1674481435.git.leon@kernel.org>
Comments: In-reply-to Leon Romanovsky <leon@kernel.org>
 message dated "Mon, 23 Jan 2023 16:00:22 +0200."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <5063.1674514892.1@famine>
Date: Mon, 23 Jan 2023 15:01:32 -0800
Message-ID: <5064.1674514892@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1674514895;
 bh=ws4I49gzal9OMpseAqlgTMxeS+K4PzsbLrV3ypXSgOQ=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=Q4xmO8ukmC8AAHgsAhD41RKYP7PgXeJ+aiJuFbPIMm+MEnPQZ4f6L5yASzXLqb83s
 0ooo2kDgxaW6bBu/Z+CNDgrRn2XUSkkttxnszZ2QwyVmit0p/uy0Ob9cMO+LfzrySC
 S3OuA90sf3KuDkYXh5gAX3l+D/AQuVBn9oMGTH/o3o3jTZj9RwaI9qMlQl/qJvwh67
 Jogc0xw1WDjjk041PGNb/XEBEpcGqpihPSnhpVwHlNBtbQnaBf6DxfLH8CSr+ayyoc
 vWOVOu/CB0vc5dxAC6z9XxmjCamicYwOr2O2h0eAGw+LsHMgatzSJgqJXG3olYd8tH
 Ij4qQSALrMO7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=Q4xmO8uk
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/10] bonding: fill IPsec
 state validation failure reason
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Paolo Abeni <pabeni@redhat.com>, Ayush Sawal <ayush.sawal@chelsio.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Dumazet <edumazet@google.com>,
 Jonathan Corbet <corbet@lwn.net>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, oss-drivers@corigine.com,
 Veaceslav Falico <vfalico@gmail.com>, Raju Rangoju <rajur@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Leon Romanovsky <leonro@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Leon Romanovsky <leon@kernel.org> wrote:

>From: Leon Romanovsky <leonro@nvidia.com>
>
>Rely on extack to return failure reason.
>
>Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>Signed-off-by: Leon Romanovsky <leon@kernel.org>
>---
> drivers/net/bonding/bond_main.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
>index 686b2a6fd674..00646aa315c3 100644
>--- a/drivers/net/bonding/bond_main.c
>+++ b/drivers/net/bonding/bond_main.c
>@@ -444,7 +444,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs,
> 	if (!slave->dev->xfrmdev_ops ||
> 	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
> 	    netif_is_bond_master(slave->dev)) {
>-		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec offload\n");
>+		NL_SET_ERR_MSG_MOD(extack, "Slave does not support ipsec offload");
> 		rcu_read_unlock();
> 		return -EINVAL;
> 	}

	Why only this one, and not include the other similar
slave_warn() calls in the bond_ipsec_* functions?  That would seem to
make some failures show up in dmesg, and others returned to the caller
via extack.

	-J

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
