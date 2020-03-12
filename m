Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF5E183B89
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 22:42:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89572877DF;
	Thu, 12 Mar 2020 21:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 43B0RJmd5lyJ; Thu, 12 Mar 2020 21:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A31A287A2D;
	Thu, 12 Mar 2020 21:42:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C066A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 21:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B70042041D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 21:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lAzB6iFEcipX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 21:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 673DC2041B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 21:42:53 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id s15so7937956otq.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 14:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sJNcDYp4qT7aa6sxV43cAbBxJy/ZRuAk3atOiO96/x8=;
 b=GD0Twb/QvfF+sxV66PVZt0cmv5a0Vh9u1j3sC+CK2egQRte+qW92YQ0BNlg/Iyrpjz
 EMFID1fOchYAGAQz2cOjF1z+2L7vtG+jWIV8zCAIaYdqBVlfn8gIFRv6Xc4xR6J5mvyq
 dlysiZkfpvTxRzXuGkNFSm+IJEIpzORf0T0Cw/HpaGMP83ImSQI6pGpeNJQvPmn7gvAB
 8oB2183YA19WbboZVS8VLq86gNSYS8FkvJ9EtQUbH/7l//I9Qs7AybU4z75AKx0C7WUl
 QqZlJ2Mul3c2qc4fZinCH+cDq7Fq8gjfVyFT5PafJy7ot8bWgSSD3kGWuGGcNZlnYJlo
 acKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sJNcDYp4qT7aa6sxV43cAbBxJy/ZRuAk3atOiO96/x8=;
 b=s0TJQaVQmFiJKwv0QcWl4IPzjG2hqSEbTv3AGcwruNlUH4ZKhD9b/Ul5pK5/ogug+o
 VE/1oPrlfX7obwUdhidB1EvggXFlebsVWwfgstYgAr7TADDHicy0NgUBMIucU5htVbQ8
 ZeHgXjTbrK1N9mku4Va8nKc45r+sV++0H+EWVbIyrZ67YThQOl6MKuW9GZjbe4B88txL
 fHIfonwFmuJ1E8qFFi2ipDBrdt8j9Sv7avg5G0nL7kRb5c2CNG4jl1URB+9TYQCic2Ru
 vGxzUFzO3aYIR04vi9QwrKpjT4XK1+LjmDAd5UfUud3XPo7lBXsnFvAQmfGWiH10+EAd
 phkA==
X-Gm-Message-State: ANhLgQ1mNq4t089mQ4Z0iJ3wHFT6YdY6GgDzNl0ezIwSJDLjxCqODiIG
 aRlzJfTfrhckrLZutGeJ0N9ZPuJZ62zwyQWGsdw=
X-Google-Smtp-Source: ADFU+vuPS3aJaNiRztBofy6W2FpHhtdHYv3gF1m7R2gvSJ2TZs4+VaIxvigzyYUOtI4fGDh0Z9/YMVwHGCBH5fV3Cc0=
X-Received: by 2002:a05:6830:19ec:: with SMTP id
 t12mr1759454ott.24.1584049372606; 
 Thu, 12 Mar 2020 14:42:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200310232301.2470904-1-jeffrey.t.kirsher@intel.com>
 <804857E1F29AAC47BF68C404FC60A184010B09A155@ORSMSX113.amr.corp.intel.com>
In-Reply-To: <804857E1F29AAC47BF68C404FC60A184010B09A155@ORSMSX113.amr.corp.intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Thu, 12 Mar 2020 14:42:41 -0700
Message-ID: <CAP-MU4NFkHcFLomj8bkzaars+rKmi04vufXs2ZveTGGQ_QJ0wA@mail.gmail.com>
To: "Allan, Bruce W" <bruce.w.allan@intel.com>
Subject: Re: [Intel-wired-lan] [next-queue v2] net/intel: remove driver
 versions from Intel drivers
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Rowden,
 Aaron F" <aaron.f.rowden@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Liedtke, Kevin D" <kevin.d.liedtke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 10, 2020 at 4:50 PM Allan, Bruce W <bruce.w.allan@intel.com> wrote:
>
> > -----Original Message-----
> > From: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Sent: Tuesday, March 10, 2020 4:23 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Allan, Bruce W
> > <bruce.w.allan@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> > Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Liedtke, Kevin D
> > <kevin.d.liedtke@intel.com>; Rowden, Aaron F <aaron.f.rowden@intel.com>;
> > Keller, Jacob E <jacob.e.keller@intel.com>
> > Subject: [next-queue v2] net/intel: remove driver versions from Intel drivers
> >
> > As with other networking drivers, remove the unnecessary driver version
> > from the Intel drivers. The ethtool driver information and module version
> > will then report the kernel version instead.
>
> The version is still logged in the kernel logfile when the driver is loaded (at least it is in ice).
> Is that still needed/wanted?  Seems redundant to me.
>

FYI - I was "strongly encouraged" to remove the print from ionic's
init function, and you may get this feedback as well.

sln

-- 
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
