Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A13DB6DAF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2019 22:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD10687D48;
	Wed, 18 Sep 2019 20:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uEtB9QPMCxR0; Wed, 18 Sep 2019 20:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A41087D7C;
	Wed, 18 Sep 2019 20:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BB341BF311
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 20:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16356867ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 20:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgEMpl28-RdC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2019 20:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5AD3D8347D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 20:30:12 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id a1so2338909ioc.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 13:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CkL04XTfdSBz7OxOcTxfIsjy+ZftzKx8BMGRuP5s8gg=;
 b=NlHb6CUQzZPz+mkbQxY4kFFYZMEAn4/+iq7d9GfK/79fOfamHmVstKhktDlW+XYt9V
 RNzYtNTySb9tLUjgV78sPtVJBrirt/jBP4cGGLbjRABzvnPcUjbNpmW6DnAWfm61R4jR
 /FxoGZnTFFAX7SUIS78ctL2PP0Z1fHuuef18Utxzffmr+J2AvVMqFodtc0YC9n7xG+Lg
 8ugPT9z/y3dNdKGmxCno2wGMdLAEYzynFbY1NBwBvDzpnT2YdRmwwEFFgqp6G+aFYfeo
 Mk8vO5Eiger1lXYzJ4R2be7i346NDQO9j2423jikXy308j1Q9eJ/JwwPzJdDEgkCwO1p
 Noog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CkL04XTfdSBz7OxOcTxfIsjy+ZftzKx8BMGRuP5s8gg=;
 b=hRa5SPeJ/ABmtqTshH3ehnyJUx+EloM3PoPlCv4Pl+zc3xLW93Ifx1iWkwtFNwEsoX
 PK1+Igfui8gN/NcBZtbrFq8GhqbbQ28MiaCIP5P28/zcK0q+koGSi3ltKhC+d0rkyA52
 GXhmavmGbvq093Aotl24oDrOUsfr47wnqA2U2T/yBdxMPDvLx5WD9DG8o81fBC0i2hO5
 3Byt01PCNWk4CViAL8UBQ76dykndpxy3f91/QyxUO18/Ojk5eaaPjKlmPIEsS6sCUy7p
 ccjB2gX37/ovd1CGoh0lslkezEDamuGkRVRWMm0OLHfIBoFSM/IUUf9Na2v8kHfbiiAu
 /Baw==
X-Gm-Message-State: APjAAAVKi4zondJ1NwcSjHBG7MyFhLpNPclMls4MQGa3AOLrXM0+zSj2
 lVDfnv4LI6E0Z1waEusE1QZkP9b2P+6/O4HYtw4=
X-Google-Smtp-Source: APXvYqzv8tYh25u0Z466hhSLLuCX7LNEsyDtE0GaYazbzY3B/3Xjhn6qy9IUJQfG5f5kKSvQRuycZLKaRuM7rcnhFS8=
X-Received: by 2002:a6b:720a:: with SMTP id n10mr3491629ioc.64.1568838610198; 
 Wed, 18 Sep 2019 13:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190910070512.31391-1-sasha.neftin@intel.com>
 <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
In-Reply-To: <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 18 Sep 2019 13:29:58 -0700
Message-ID: <CAKgT0Ue2rti-T1F9N02ejv2qgQuu7pM6aFCh7QJSys-B2MiNBw@mail.gmail.com>
To: David Arcari <darcari@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add set_rx_mode support
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 18, 2019 at 12:29 PM David Arcari <darcari@redhat.com> wrote:
>
> Hi,
>
> On 09/10/2019 03:05 AM, Sasha Neftin wrote:
> > Add multicast addresses list to the MTA table.
> > Implement promiscious mode and add basic rx mode support.
> > Add option for ipv6 address settings.
> >
> > Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
>
> This seems to break ipv4 communication over vlans:

Why is this code messing with the VLANs? The patch description says it
is enabling multicast and the MTA but it is messing with the VFTA
table as well. That is probably what broke the VLANs.

I don't see the bits to support ndo_vlan_rx_[add|kill]_vid and without
that it will break VLANs since the driver is filtering them unless
promiscuous filtering is enabled. The VLAN changes should be moved
into a separate patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
