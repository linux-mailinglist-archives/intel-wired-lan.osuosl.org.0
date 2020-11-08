Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1C62AAD34
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Nov 2020 20:25:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12EF9870A7;
	Sun,  8 Nov 2020 19:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lIaxngtt3axo; Sun,  8 Nov 2020 19:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6A55870F2;
	Sun,  8 Nov 2020 19:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69D161BF48C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 653688723E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eTqB6FqmQRht for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Nov 2020 09:04:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8E0787234
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:04:27 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E52B206ED
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604826267;
 bh=XRmK2NTmAhq50stbxlBAS43zkf31w9E/y6i4+Yl4b1M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FJrWMZuetdjKLLi6RKQkDF9+K6AJYEAToidxUpolQ8CYEfmTKUsjB0vXQk2zAopCX
 iWh4D8eeeOExivPw35tbVvQZWn2fKkbyKBucmDwTR1LfILmEueWJ3IyNjDYxryeQtb
 yqYy1ED1H1d4HljRHIOctOqeQooInpQ/W0V3USR4=
Received: by mail-vk1-f173.google.com with SMTP id w67so1185947vke.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 08 Nov 2020 01:04:27 -0800 (PST)
X-Gm-Message-State: AOAM530Oa5XCHJjCqdfz+NVavPnJXAj1v7pPOh/Sx0c8ijU0EkRqR4tt
 H3I98SR8AffKPsAX+Aqg2NpRFbpb3SJNGaEiXqY=
X-Google-Smtp-Source: ABdhPJxbchfLHvm//9BYfWlDucfuF8wLzgFR9EB5dxuG79rojQx1rtY+pV8bdN46win3l95FZoEhkweQ+q1l+e6j+48=
X-Received: by 2002:a1f:1289:: with SMTP id 131mr4751432vks.24.1604826266680; 
 Sun, 08 Nov 2020 01:04:26 -0800 (PST)
MIME-Version: 1.0
References: <c21d1ef1ddb071eed868a96649b4edf0b61b4247.camel@codethink.co.uk>
 <20201107152827.GA90705@kroah.com>
In-Reply-To: <20201107152827.GA90705@kroah.com>
From: Luis Chamberlain <mcgrof@kernel.org>
Date: Sun, 8 Nov 2020 03:04:14 -0600
X-Gmail-Original-Message-ID: <CAB=NE6U=kTw_R+OkqLf0iT0Bwti8w=7RWjWgeQmVQssbZ4OL3w@mail.gmail.com>
Message-ID: <CAB=NE6U=kTw_R+OkqLf0iT0Bwti8w=7RWjWgeQmVQssbZ4OL3w@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Approved-At: Sun, 08 Nov 2020 19:25:14 +0000
Subject: Re: [Intel-wired-lan] [4.14] Security fixes (blktrace, i40e)
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
Cc: Sasha Levin <Alexander.Levin@microsoft.com>, Jens Axboe <axboe@kernel.dk>,
 Ben Hutchings <ben.hutchings@codethink.co.uk>,
 intel-wired-lan@lists.osuosl.org, stable <stable@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3987175082542490241=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3987175082542490241==
Content-Type: multipart/alternative; boundary="0000000000008d455105b394bbec"

--0000000000008d455105b394bbec
Content-Type: text/plain; charset="UTF-8"

I'd like some more time for this, to review on older kernels. Don't think
it's the best yet

On Sat, Nov 7, 2020, 9:27 AM Greg Kroah-Hartman <gregkh@linuxfoundation.org>
wrote:

> On Sat, Nov 07, 2020 at 12:17:42AM +0000, Ben Hutchings wrote:
> > Here are backports of some fixes to the 4.14 stable branch.
> >
> > I tested the blktrace fix with the script referenced in the commit
> > message.
> >
> > I wasn't able to test the i40e changes (no hardware and no reproducer
> > available).
>
> Thanks for all of these, now queued up.
>
> greg k-h
>

--0000000000008d455105b394bbec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I&#39;d like some more time for this, to review on older =
kernels. Don&#39;t think it&#39;s the best yet</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 7, 2020, 9:27 AM =
Greg Kroah-Hartman &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh=
@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On Sat, Nov 07, 2020 at 12:17:42AM +0000, Ben Hutchings wrote:<br>
&gt; Here are backports of some fixes to the 4.14 stable branch.<br>
&gt; <br>
&gt; I tested the blktrace fix with the script referenced in the commit<br>
&gt; message.<br>
&gt; <br>
&gt; I wasn&#39;t able to test the i40e changes (no hardware and no reprodu=
cer<br>
&gt; available).<br>
<br>
Thanks for all of these, now queued up.<br>
<br>
greg k-h<br>
</blockquote></div>

--0000000000008d455105b394bbec--

--===============3987175082542490241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3987175082542490241==--
