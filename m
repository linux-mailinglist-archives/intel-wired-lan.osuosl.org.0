Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DB62FA8E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 19:32:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0DB572045D;
	Mon, 18 Jan 2021 18:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VEa5v1m395T; Mon, 18 Jan 2021 18:32:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 231FF2046B;
	Mon, 18 Jan 2021 18:32:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97A9A1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 18:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8149A2045D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 18:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b5M+FoVekdTO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 18:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 74B5520413
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 18:32:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9F8322CA2;
 Mon, 18 Jan 2021 18:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610994755;
 bh=1yjuMhFuz1zFDmnEJbai/9WGtEZ7VVPt2Fx7tTd/QM0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=im6Abq6WjSBqxPOhPEMXP54FKd2/217WNMZc3OB1gE2rTf4ENRr6EzuMtPGSpccxH
 9ySeR8Ga7Xp4Ta7+ZyxlaVJABwBHJeECiaGdYBpG3cKEvC4RuJla0v65FcDxo5yxUf
 ADTVKikbKNf5FBAqFlNdtxreyulgpGbksaB15noHRu577o0sN6HGIkJmJKFe490yyB
 xbCz5rPP3+GvCe21ZIGxm6yuDxBD55R2C8zhsXVzKIawEGGem4WaIG+jimhMXJ5/0z
 D6gka6FeVv9rcEVcGzzOW9fGid/kLLTpP0l6I8D5I3+L9hvIPdwIbP1tPRa2Zj5vq2
 YPkPfwLvNpKVg==
Date: Mon, 18 Jan 2021 10:32:33 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20210118103233.49bfd205@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAJ8uoz3YSuPj6F+GHkk6yXHryUEOUhVSg2pDVEVrFA6b8Hgu6g@mail.gmail.com>
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
 <CAJ8uoz3YSuPj6F+GHkk6yXHryUEOUhVSg2pDVEVrFA6b8Hgu6g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] i40e: small improvements
 on XDP path
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
Cc: Network Development <netdev@vger.kernel.org>, edwin.verplanke@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Cristian Dumitrescu <cristian.dumitrescu@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 bpf <bpf@vger.kernel.org>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 Jan 2021 08:31:23 +0100 Magnus Karlsson wrote:
> On Thu, Jan 14, 2021 at 3:34 PM Cristian Dumitrescu
> <cristian.dumitrescu@intel.com> wrote:
> >
> > This patchset introduces some small and straightforward improvements
> > to the Intel i40e driver XDP path. Each improvement is fully described
> > in its associated patch.
> 
> Thank you for these clean ups Cristian!
> 
> For the series:
> 
> Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>

FWIW since this series is 100% driver code I'm expecting it will 
come downstream via Tony's tree. Please LMK if that's not the case.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
