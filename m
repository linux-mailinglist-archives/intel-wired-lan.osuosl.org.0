Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B36EF21D22
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 20:09:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FDF6879A9;
	Fri, 17 May 2019 18:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rdPKXJyPP+sq; Fri, 17 May 2019 18:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AAD581402;
	Fri, 17 May 2019 18:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B35E1BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 18:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C0728857D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 18:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IeoAGnaZcL+U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 18:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from alln-iport-3.cisco.com (alln-iport-3.cisco.com [173.37.142.90])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED447863FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 18:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2361; q=dns/txt; s=iport;
 t=1558116582; x=1559326182;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0g21aU88ovgbJIF975Ro+MDCo4+fJXC5wnaD5d7XJ2M=;
 b=isn7RMRrD6c3TVDOAA9ZBPJ2p/KO/dYskeZRyKjZz0/+kau1/S9NxO6N
 kHv1X+FxikvzS5oP4UVCY45Rm6siZWfdow3sJd+7jkS9rO2AHrtKuJYVb
 HeE+lcLNhmSWFKRC3Y8M5Iho77Iuq3/tmN8z3mcVEg+JTnfaI/SNSxs8+ w=;
X-IronPort-AV: E=Sophos;i="5.60,480,1549929600"; d="scan'208";a="278503039"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
 by alln-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 May 2019 18:09:40 +0000
Received: from zorba ([10.24.25.58])
 by rcdn-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id x4HI9c3L014192
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 17 May 2019 18:09:40 GMT
Date: Fri, 17 May 2019 11:09:36 -0700
From: Daniel Walker <danielwa@cisco.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190517180936.nwsw7brjo2yfvnol@zorba>
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
 <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
 <76B41175-0CEE-466C-91BF-89A1CA857061@cisco.com>
 <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
 <20190517010330.2wynopuhsqycqzuq@zorba>
 <bd9e6a93-c8e8-a90e-25b0-26ccbf65b7c4@gmail.com>
 <CAKgT0Uev7sfpOOhusAg9jFLkFeE9JtTntyTd0aAHz2db69L13g@mail.gmail.com>
 <20190517163643.7tlch7xqplxohoq7@zorba>
 <CAKgT0Ue0b1QxG2ijegbHFz-2Wpxga0ffvhsfDg4VLDRaDSFvdw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0Ue0b1QxG2ijegbHFz-2Wpxga0ffvhsfDg4VLDRaDSFvdw@mail.gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.24.25.58, [10.24.25.58]
X-Outbound-Node: rcdn-core-4.cisco.com
Subject: Re: [Intel-wired-lan] [PATCH] igb: add parameter to ignore nvm
 checksum validation
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "Nikunj Kela \(nkela\)" <nkela@cisco.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 17, 2019 at 09:58:46AM -0700, Alexander Duyck wrote:
> > I don't think you can say because the checksum is valid that all data contained
> > inside is also valid. You can have a valid checksum , and someone screwed up the
> > data prior to the checksum getting computed.
> 
> If someone screwed up the data prior to writing the checksum then that
> is on them. In theory we could also have a multi-bit error that could
> similarly be missed. However if the checksum is not valid then the
> data contained in the NVM does not match what was originally written,
> so we know we have bad data. Why should we act on the data if we know
> it is bad?
 
It's hypothetical , but it's likely someone has screwed up the data prior to the
checksum getting computed.

> > > We need to make the checksum a hard stop. If the part is broken then
> > > it needs to be addressed. Workarounds just end up being used and
> > > forgotten, which makes it that much harder to support the product.
> > > Better to mark the part as being broken, and get it fixed now, than to
> > > have parts start shipping that require workarounds in order to
> > > function.o
> >
> > I don't think it's realistic to define the development process for large
> > corporations like Cisco, or like what your doing , to define the development
> > process for all corporations and products which may use intel parts. It's better
> > to be flexible.
> >
> > Daniel
> 
> This isn't about development. If you are doing development you can do
> whatever you want with your own downstream driver. What you are
> attempting to do is update the upstream driver which is used in
> production environments.
 
Cisco has this issue in development, and in production. So your right, it's not
about development in isolation. People make mistakes..

> What concerns me is when this module parameter gets used in a
> development environment and then slips into being required for a
> production environment. At that point it defeats the whole point of
> the checksum in the first place.

I agree .. Ultimately it's the choice of the OEM, if it gets into production
then it's their product and they support the product. As I was saying in a prior
email it should be a priority of the driver to give flexibility for mistakes
people will inevitably make.

Daniel

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
