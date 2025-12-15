Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 473C5CBE315
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 15:09:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0216F80AB8;
	Mon, 15 Dec 2025 14:09:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASwZIpPVqIps; Mon, 15 Dec 2025 14:09:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6915680ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765807791;
	bh=oc/35n7eOAP8pFt55syhr1wbpjAJtoSwVCMNoOaa6ls=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FgKIywx5V6TTmCcjscq0plUP1lJOEyfvQU/grek89a2J9clWDoH/G90JKwIqbBLme
	 CFMSRp/BOgCklZffsbYG+HJ0F0qmBGLCCAMcwEJ58i76rdjey3hiFNalTWBnAJU64O
	 z4Gi7+KBku4asyGv5u9XLp3DSn75nlft0dkg5rT7prpFLqFPiWXjMjjIolFP8qtfN5
	 Ce3qAi/83knxjLdc8+STmLv/xbNbIbWWkkswztGd3EH/tkjW0aGUUeA3Wrc2sje2+A
	 VWPmMM3ltlhdXLiXtzGphDAnKjuPDWDrxUi7Dv6aMnMW236FYqDYf4xZtI5PO8CfCg
	 eyPv1SWTzpAUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6915680ABC;
	Mon, 15 Dec 2025 14:09:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA8D3117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1A6580A82
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:09:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xAftxFYpi9gr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 14:09:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0D72980A64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D72980A64
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D72980A64
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:09:44 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-4775ae77516so42059575e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 06:09:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765807783; x=1766412583;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oc/35n7eOAP8pFt55syhr1wbpjAJtoSwVCMNoOaa6ls=;
 b=QhFzHRPZyVxypV47Q+yKnPYcfadBUnNNQ9jyc/mOxajTMAhu39uE5oOv6s3So4q//e
 oOBG3tfO+IYRibI/Yrwe/QlnA4LSF0B64cSPl6BN+0k21avJNjOXgLgw74ua1NEhiM0q
 32Md40vO3+8mNpqSwy5Po+RCKeJRdIyx+X18VfLbqDJ1OAw/LKxQwmAOBrvuvIa4fVih
 zKGaC7NlGx/8VraGo/OZbkxLnN+VJ9RDbW1N56eYeoqWDXq+u67+o5bQSGgNZ0RVOJvs
 SdYG0mccW2xtq0KM9rqxBjLUlvo9BPB6NAEAjiPMS07Kd3HUu+0m+4Tk54Nxn3pzVKtg
 XXjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQJbxHWTF4aLz0Y3uk6XsDsw2Tl84U8YJNbJduQiAAQkJKpzQ1ABjAOQk8z7LQoMdXLQb7DJ6oI1Vn0ESAJOg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzd2rpWOCGZstdzKOiOY8M/tnCtwgkrUGfdfMZRmPFeJcfnnU0A
 VIEyy6VN8XFnYchS0fQ9SWDISE0AslBWfZx5aQ+jPNRgNNL01SJAspwczG/xFY7T+qw=
X-Gm-Gg: AY/fxX7A3IU3qoCS7d556gq2bq4GqP7us7Sk6ORluodD+EHeTunQe/0u9SnaPEuF5C8
 WNFC1JGZsYcr1JfGd0EB/pNbdb8WAR4MCOLOqf8xseLIkG64i9zXDi1DzMxi8inDJmNUQiN841R
 FVQRUufjBflvTj+K+4N/umEzPyeqIErd7GpKbisPx2kBGuiZ55yu4lX9xwOjFH/bPNBSQN1MRZ9
 27+Pf9P5pRR9eIqQg1IJyS0l29g8O4kEdp/38v2IieZrrqNN7ENFBiyuKQZ5VEyK5VRmgPrWrou
 XaXS9avaBx2pFxUEfL7jojK1AKe0yT+tvGuLK9D9rT+0Y8Vr3VAq5LKoOt/0ZPblt8qp5VATSd8
 Rs9LePuVjg24riTtAef+9XfvVdmM9ZVy4sUx0fkJXOEvvuLD2G6gMopjgXSTJHrppbjaZCUSPGU
 X3TzXfery4upz39TWky9I6qx4=
X-Google-Smtp-Source: AGHT+IFJ7XhIHXbaOzx1TEAlEfyUnyEwSWzsivaISUhktsBUoRVHQJCmyr0qoXUugUvu/YlkS2NEog==
X-Received: by 2002:a05:600c:3e85:b0:477:9d54:58d7 with SMTP id
 5b1f17b1804b1-47a8f90cffemr109935815e9.29.1765807782193; 
 Mon, 15 Dec 2025 06:09:42 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47a8f74b17bsm192749655e9.2.2025.12.15.06.09.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Dec 2025 06:09:41 -0800 (PST)
Date: Mon, 15 Dec 2025 15:09:37 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <dssuif6sbx7zp6pkk6divo4qceyopcq4rijkvqu7wmtqegucnd@etq3m2vvolo4>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
 <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
 <3E2869EC-61B3-40DA-98E2-CD9543424468@redhat.com>
 <tawd6udewifjeoymxkfkapxgcgfviixb4zgcjnplycigk5ffws@rdymwt2hknsl>
 <eee9be12-603d-4e8e-92f8-e76728974313@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eee9be12-603d-4e8e-92f8-e76728974313@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765807783; x=1766412583;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=oc/35n7eOAP8pFt55syhr1wbpjAJtoSwVCMNoOaa6ls=;
 b=GucBHqUW6YUQ4oGaSZc76bfZp7tFyirFZjh97anEul2j1SRIYE6BqicScxtKvi53NC
 fi3eon0PFGngP+aRE62UwgGnBcfn+by5uGk/iyPK/8NZ2nDz1e8sJ/rmLG1Tri20ss/e
 /6vMhRFbMc8eBHkfb9VjXHGgHX1rtq7QqAUZbBU5I5Iym/j4momkW2OmkHCX7pIw0dB2
 abQA/42hXyg5ieFPk4tDZ47lfh7B11t02KyEsDNMzEAVrGi4t4MtS6xs5KXXx1sHlx/+
 d78mb/nQXeA9KMKIjXZAMP6Aajx27pCGSEVIyfj/F49bvl4EYGB6eQ89uB+YoSiXJRL1
 pn1w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=GucBHqUW
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 02/13] dpll: Allow
 registering pin with firmware node
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Dec 15, 2025 at 02:51:36PM +0100, ivecera@redhat.com wrote:
>On 12/15/25 2:08 PM, Jiri Pirko wrote:
>> Sun, Dec 14, 2025 at 08:35:01PM +0100, ivecera@redhat.com wrote:
>> > 
>> > 
>> > On December 12, 2025 12:25:12 PM GMT+01:00, Jiri Pirko <jiri@resnulli.us> wrote:
>> > > Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:
>> > > 
>> > > [..]
>> > > 
>> > > > @@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>> > > >   */
>> > > > struct dpll_pin *
>> > > > dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>> > > > -	     const struct dpll_pin_properties *prop)
>> > > > +	     const struct dpll_pin_properties *prop,
>> > > > +	     struct fwnode_handle *fwnode)
>> > > > {
>> > > > 	struct dpll_pin *pos, *ret = NULL;
>> > > > 	unsigned long i;
>> > > > @@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>> > > > 	xa_for_each(&dpll_pin_xa, i, pos) {
>> > > > 		if (pos->clock_id == clock_id &&
>> > > > 		    pos->pin_idx == pin_idx &&
>> > > > -		    pos->module == module) {
>> > > > +		    pos->module == module &&
>> > > > +		    pos->fwnode == fwnode) {
>> > > 
>> > > Is fwnode part of the key? Doesn't look to me like that. Then you can
>> > > have a simple helper to set fwnode on struct dpll_pin *, and leave
>> > > dpll_pin_get() out of this, no?
>> > 
>> > IMHO yes, because particular fwnode identifies exact dpll pin, so
>> > I think it should be a part of the key.
>> 
>> The key items serve for userspace identification purposes as well. For
>> that, fwnode is non-sense.
>> fwnode identifies exact pin, that is nice. But is it the only
>> differentiator among other key items? I don't expect so.
>
>From this point of view, not. I will not touch dpll_pin_get() and rather
>use new helper like dpll_pin_fwnode_set(), ok?

Yes please. Thanks!


>
>Thanks,
>Ivan
>
