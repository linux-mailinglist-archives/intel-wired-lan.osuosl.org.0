Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5322B240D29
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 20:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C7AD8770A;
	Mon, 10 Aug 2020 18:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0y+29QSkbTn; Mon, 10 Aug 2020 18:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56A28876FF;
	Mon, 10 Aug 2020 18:49:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 883281BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 18:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80D5D85A4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 18:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJF9rnoAQukh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 18:47:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F245C83636
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 18:47:35 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f7so9171804wrw.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 11:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AmsEySzgv8B1PLjsj0fs6CD8f+iO2YMWCATwcajXPho=;
 b=AzrE8fuwkGwAUMY15NFuRpGuumEZuR1m/Q4dy9nS50BG8NJ/HFu1LARIbOt1Krw5ve
 UNs0or8bSsegEXndTN1R0nT+84kWHGQFYfiQDFJ6c1Xe9iJOFiyn3+igarpL/6xIsfmc
 npESJm8Acsi2YEViWWshra+q6Q58TN6cQLAIKbc+TwKphTldKH8XclMYOjTHJfRsWiKj
 3hdVrqIHGwpNp4Aq/xJgmdxvnyfKbEZc1zqEqVOhmEu2Ltji3qlk008Wpc++WmAsOxi6
 Oiv350rbxZn7WXObuX5x8W8DviGBQte16XR1a2bw2S1VCY3JSsbrbQoZesWGD2z/gVr8
 h5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=AmsEySzgv8B1PLjsj0fs6CD8f+iO2YMWCATwcajXPho=;
 b=uW/r88O63aU81cYP9qoUSgc0fJVoL5Asa18KPX54g8fk6xhCLOvHYg7zT5BQnJHrDk
 WKnJLWNbsNdYqm7rNh6E2hnSNtrVdXFAfHZBpQHH5gkizpHfB3nNsB2gK2T7DtdhPgID
 KHjaQ7KV2Fo4Psw+Dh1z+6W8evZQ5yp3FXVYdqt7iPvKabm7cTwqyAEjuhsiXSPeJggq
 UlFiKhK4Bmjj98BhBBM7451Bc4MfLRmWfcaBP8g5B5GOKWDbsB3DRJgB3/uvPHFNOSdq
 f4kk15vU18HzKD42PuqNgD6B7UGsQxxYcOuvV3UNkkYCqkLNYSU5+Ev21FU1NLEeMAjn
 PrZA==
X-Gm-Message-State: AOAM530Ksdh9qivVp5fgt/1zIvaRuqy3vKlKz7f5vbmKqjW8gsu6irAM
 39jKDTIR3Ixu3mn/mQ17dGQ=
X-Google-Smtp-Source: ABdhPJx0vTVjhF2iAhE8NnV3KHfwWIuAR7fsuL/uZLptwLQyvWFMV22H1Fi/KP4zSmjbKK8N5T7yxA==
X-Received: by 2002:adf:d849:: with SMTP id k9mr27381081wrl.115.1597085254125; 
 Mon, 10 Aug 2020 11:47:34 -0700 (PDT)
Received: from eldamar (80-218-24-251.dclient.hispeed.ch. [80.218.24.251])
 by smtp.gmail.com with ESMTPSA id d11sm22083411wrw.77.2020.08.10.11.47.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Aug 2020 11:47:32 -0700 (PDT)
Date: Mon, 10 Aug 2020 20:47:31 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Jesse Brandeburg <jbrandeb@intel.com>
Message-ID: <20200810184731.GA300766@eldamar.local>
References: <20200716203902.acn3ea2b4iorxlhq@inutil.org>
 <alpine.LFD.2.23.451.2007281106010.590669@jbrandeb-desk.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.23.451.2007281106010.590669@jbrandeb-desk.jf.intel.com>
X-Mailman-Approved-At: Mon, 10 Aug 2020 18:49:24 +0000
Subject: Re: [Intel-wired-lan] Further information on
 CVE-2019-0145/CVE-2019-0146/CVE-2019-0147/CVE-2019-0148/CVE-2019-0149 for
 Linux?
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
Cc: Moritz Muehlenhoff <jmm@inutil.org>, intel-wired-lan@lists.osuosl.org,
 benh@debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jessie,

On Tue, Jul 28, 2020 at 11:10:27AM -0700, Jesse Brandeburg wrote:
> 
> 
> On Thu, 16 Jul 2020, Moritz Muehlenhoff wrote:
> 
> > Hi,
> > https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00255.html refers
> > to vulnerabilities in Intel Ethernet drivers and a few of them refer to the i40e driver
> > specifically:
> 
> I'm sorry Moritz that we haven't gotten back to you. We are chasing down the
> specific patches made upstream for software portions of the below fixes.
> 
> > CVEID: CVE-2019-0145
> > Description: Buffer overflow in i40e driver for Intel(R) Ethernet 700 Series Controllers
> > versions before 7.0 may allow an authenticated user to potentially enable an escalation
> > of privilege via local access.
> > 
> > CVEID: CVE-2019-0146
> > Description: Resource leak in i40e driver for Intel(R) Ethernet 700 Series Controllers
> > versions before 2.8.43 may allow an authenticated user to potentially enable a denial of
> > service via local access.
> > 
> > CVEID: CVE-2019-0147
> > Description: Insufficient input validation in i40e driver for Intel(R) Ethernet 700 Series
> > Controllers versions before 7.0 may allow an authenticated user to potentially enable a
> > denial of service via local access.
> > 
> > CVEID: CVE-2019-0148
> > Description: Resource leak in i40e driver for Intel(R) Ethernet 700 Series Controllers
> > versions before 7.0 may allow an authenticated use to potentially enable a denial of
> > service via local access.
> > 
> > CVEID: CVE-2019-0149
> > Description: Insufficient input validation in i40e driver for Intel(R) Ethernet 700
> > Series Controllers versions before 2.8.43 may allow an authenticated user to potentially
> > enable a denial of service via local access.
> > 
> > Is there any further information which commits fixed these and if so, were they submitted
> > to stable kernels? (The Debian kernels are based on 4.9.x and 4.19.x LTS kernels, so that
> > we can make sure these are addressed in stable/oldstable releases)
> 
> We will get you the information, it was a mistake on our part to not mention
> CVEs in the commit messages if/when we upstreamed the patches. The only
> thing I can say for sure is that these have been addressed in our
> Out-of-tree drivers, but I realize that is not your question.

Thanks a lot as well for coming back to the question from Moritz, much
appreiciated.

I noted here was a submission for i40e fixes to stable, as
https://lore.kernel.org/stable/20200807205517.1740307-1-jesse.brandeburg@intel.com/
. Is any of those referring to one of the above?

Thanks already for your time,

Regards,
Salvatore
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
