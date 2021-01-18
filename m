Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DDF2FB9C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 15:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D966204CC;
	Tue, 19 Jan 2021 14:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oqI6Fl9MBi3r; Tue, 19 Jan 2021 14:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60FBF20517;
	Tue, 19 Jan 2021 14:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D08C1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 11:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C9C72034C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 11:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v4sWLWNqRrCK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 11:19:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 401E82010C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 11:19:25 +0000 (UTC)
Received: by mail-io1-f46.google.com with SMTP id x21so13838933iog.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 03:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:mime-version:subject:message-id:date:to;
 bh=mgxbZlu3B8V5mPnAHQ8AwPiC85bcmL3pATZfBslF+SA=;
 b=dewsvv+hAvNuXc19NxUXkgm4de6DJ0vBRzghl5DwcSYuRVC4gk1FuOgGtHSQw1kSVW
 2vLJHYvlqH9kDHJhKQpl9SYEmybP1RRyze1FWRcd8nyxf/g3isvrP9K0qyvDH7Gocvv+
 L3zkCpScRsEF59XT1E3tZ9v0QiEOsMgdM4xgPuo2LEGiAG/kUYY08IZdjk65zNCiP6fC
 Jamyjoe2wQh5nAEa9M0IVH6K/c3pHMH9ccKG1bpTLKgu75xR3tuBt9ooTc5McbbC6xBV
 ZmLqcWQ/d9TYvVrc5RtB4E2YTU6kkahKksO6EWvxetQ4DVk5rOa+m8gK/wpLy1lH3Lth
 wQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=mgxbZlu3B8V5mPnAHQ8AwPiC85bcmL3pATZfBslF+SA=;
 b=ca8Kwn/qThe46dB/eM1sRhvLRMoO4u+xUL2l4PihNN7WrwS1IJSQSJ9QKC2LnM2l4q
 iDEUimSevbfPYZfgvq4ZE5ti/ld+AGaDF9vGjE5QkMUmWWAaWm+IHUsOqSVLkKkgksIo
 e2nwyNMHmqK9xiB39VIeioRX/HwGdwgCow7Pwst8iXrXt7znkemxWd6RS7Ji4u4VZHzU
 JL5i20BDTfcwHGfGOqXPSaFSut69llrd5nXRxPL1+STwJIpU8YS+gvdihep5iuXGsvsb
 xer4nf40ipEL1weEZKpfvyBelw3jaSC79QN1WA8H62jE/H5PtwhBg0siONA/whYXr/Aj
 AKCA==
X-Gm-Message-State: AOAM531KGJL3aAMwPnlPdUhkTBJWDniykhV2Hz4XD0cUuC+AMaXV6GXi
 0PFk+0loCJFTx8o+Is5HBbUWrifYa4NJDQ==
X-Google-Smtp-Source: ABdhPJyO3Hx8u23wnJvyeKhb9kKZVpUkrepQDUFDd5HjWVinZKlXZxo7XT8YD6CiHUax652FSwTTIQ==
X-Received: by 2002:a05:6e02:1544:: with SMTP id
 j4mr7478924ilu.67.1610968764228; 
 Mon, 18 Jan 2021 03:19:24 -0800 (PST)
Received: from [192.168.10.232] (63-231-76-40.hlrn.qwest.net. [63.231.76.40])
 by smtp.gmail.com with ESMTPSA id
 q2sm7723629ioh.36.2021.01.18.03.19.23
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 03:19:23 -0800 (PST)
From: Brian Topping <brian.topping@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Message-Id: <7F3D0A12-F9FE-4386-9D35-D1C89BD84227@gmail.com>
Date: Mon, 18 Jan 2021 04:19:23 -0700
To: intel-wired-lan@lists.osuosl.org
X-Mailer: Apple Mail (2.3654.40.0.2.32)
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:49:41 +0000
Subject: [Intel-wired-lan] ixgbe limits on core count
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
Content-Type: multipart/mixed; boundary="===============7396979722258645648=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7396979722258645648==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0BF4F5A3-24E1-4E1C-8D12-933F1206D43D"


--Apple-Mail=_0BF4F5A3-24E1-4E1C-8D12-933F1206D43D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello experts!=20

I=E2=80=99m setting up a machine with two E5-2696 v3 CPUs using XDP on =
kernel 5.10.6-051006-generic and running into the constraint at =
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dr=
ivers/net/ethernet/intel/ixgbe/ixgbe_main.c#n10136 =
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d=
rivers/net/ethernet/intel/ixgbe/ixgbe_main.c#n10136>.=20

Any advice what the most practical long term solution is?

Short term, I can dial back the number of usable cores. I haven=E2=80=99t =
dug into the bits to understand if this constraint is based on hardware =
limits on the card or this was a choice that was made when processors =
had fewer cores.

Thanks kindly!

Brian=

--Apple-Mail=_0BF4F5A3-24E1-4E1C-8D12-933F1206D43D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hello=
 experts!&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">I=E2=80=
=99m setting up a machine with two E5-2696 v3 CPUs using XDP on kernel =
5.10.6-051006-generic and running into the constraint at <a =
href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/tree/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c#n10136" =
class=3D"">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/tree/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c#n10136</a>.&nbsp;</=
div><div class=3D""><br class=3D""></div><div class=3D"">Any advice what =
the most practical long term solution is?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Short term, I can dial back the number =
of usable cores. I haven=E2=80=99t dug into the bits to understand if =
this constraint is based on hardware limits on the card or this was a =
choice that was made when processors had fewer cores.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Thanks kindly!</div><div =
class=3D""><br class=3D""></div><div class=3D"">Brian</div></body></html>=

--Apple-Mail=_0BF4F5A3-24E1-4E1C-8D12-933F1206D43D--

--===============7396979722258645648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7396979722258645648==--
